import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/item/item_form/item_form_bloc.dart';
import '../../../application/item/item_loader/item_loader_bloc.dart';
import '../../../common/theme/theme.dart';
import '../../../domain/item/item.dart';
import '../../../injection.dart';
import '../../components/button/button.dart';
import '../../components/card/empty_card.dart';
import '../../components/toast/flushbar.dart';
import 'widgets/item_card.dart';
import '../../components/modal/delete_dialog.dart';
import '../../router/app_router.gr.dart';
import 'widgets/item_header.dart';
import 'widgets/item_shimmer.dart';

@RoutePage()
class ItemPage extends StatefulWidget implements AutoRouteWrapper {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<ItemLoaderBloc>()..add(ItemLoaderEvent.fetched(isRefresh: true)),
    child: this,
  );
}

class _ItemPageState extends State<ItemPage> {
  bool isEditMode = false;
  Set<String> selectedItems = {};
  final ScrollController _scrollController = ScrollController();

  // Sample data - replace with your actual data
  final List<Map<String, dynamic>> items = [
    {'id': 1, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 2, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 3, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 4, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
  ];

  void toggleEditMode() {
    setState(() {
      isEditMode = !isEditMode;
      if (!isEditMode) {
        selectedItems.clear();
      }
    });
  }

  void toggleItemSelection(String itemId) {
    setState(() {
      if (selectedItems.contains(itemId)) {
        selectedItems.remove(itemId);
      } else {
        selectedItems.add(itemId);
      }
    });
  }

  void selectAllItems() {
    setState(() {
      if (selectedItems.length == items.length) {
        selectedItems.clear();
      } else {
        selectedItems = items.map((item) => item['id'] as String).toSet();
      }
    });
  }

  void deleteSelectedItems() {
    DeleteConfirmationDialog.show(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (previous, current) =>
          previous.failureOrDeleteItemOption !=
          current.failureOrDeleteItemOption,
      listener: (context, state) {
        state.failureOrDeleteItemOption.fold(
          () {},
          (either) => either.fold(
            (f) => AppFlushbar.showItemFailureToast(context, f),
            (data) {
              AppFlushbar.showSuccess(context, 'Berhasil menghapus barang');
              context.read<ItemLoaderBloc>().add(
                ItemLoaderEvent.fetched(isRefresh: true),
              );
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(isEditMode ? 'Pilih Barang' : 'List Stock Barang'),
          leading: isEditMode
              ? IconButton(
                  onPressed: toggleEditMode,
                  icon: const Icon(Icons.close),
                )
              : null,
          actions: [
            if (!isEditMode)
              IconButton(
                onPressed: () => context.router.push(ItemSearchRoute()),
                icon: const Icon(Icons.search),
              ),
            if (isEditMode && selectedItems.isNotEmpty)
              TextButton(
                onPressed: selectAllItems,
                child: Text(
                  selectedItems.length == items.length
                      ? 'Batal Pilih Semua'
                      : 'Pilih Semua',
                  style: TextStyle(color: AppColor.primary),
                ),
              ),
          ],
        ),
        floatingActionButton: !isEditMode
            ? FloatingActionButton.extended(
                onPressed: () => context.router.push(
                  ItemFormRoute(isEdit: false, item: Item.empty()),
                ),
                backgroundColor: AppColor.primary,
                foregroundColor: AppColor.white,
                elevation: 8,
                icon: Icon(Icons.add, size: 32),
                label: Text(
                  'Barang',
                  style: AppStyle.lg.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              )
            : null,
        body: BlocBuilder<ItemLoaderBloc, ItemLoaderState>(
          builder: (context, itemState) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification &&
                    _scrollController.position.extentAfter == 0) {
                  context.read<ItemLoaderBloc>().add(ItemLoaderEvent.fetched());
                  return true;
                }

                return true;
              },
              child: RefreshIndicator(
                backgroundColor: AppColor.white,
                color: AppColor.primary,
                onRefresh: () async {
                  context.read<ItemLoaderBloc>().add(
                    ItemLoaderEvent.fetched(isRefresh: true),
                  );
                },
                child: itemState.failureOptionItem.fold(
                  () => CustomScrollView(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      // Header
                      SliverToBoxAdapter(
                        child: ItemHeading(
                          isEditMode: isEditMode,
                          total: itemState.totalItems,
                          onEdit: () => toggleEditMode(),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: itemState.isFetching
                            ? ItemShimmer()
                            : SizedBox.shrink(),
                      ),
                      // Items List
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final item = itemState.items[index];

                          return ItemCard(
                            item: item,
                            isEditMode: isEditMode,
                            isSelected: selectedItems.contains(item.id),
                            onDeleted: () {
                              DeleteConfirmationDialog.show(
                                context: context,
                                onConfirm: () {
                                  context.read<ItemFormBloc>().add(
                                    ItemFormEvent.deleted(item.id),
                                  );
                                },
                              );
                            },
                            onSelectionChanged: (selected) {
                              toggleItemSelection(item.id);
                            },
                            onLongPress: () {
                              if (!isEditMode) {
                                toggleEditMode();
                                toggleItemSelection(item.id);
                              }
                            },
                          );
                        }, childCount: itemState.items.length),
                      ),
                      // Footer info
                      if (!isEditMode)
                        SliverToBoxAdapter(child: buildPullToRefreshInfo()),
                    ],
                  ),
                  (f) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        ItemHeading(
                          isEditMode: isEditMode,
                          total: itemState.totalItems,
                          onEdit: () => toggleEditMode(),
                        ),
                        f.maybeMap(
                          orElse: () => EmptyCard(title: 'Tidak ada data'),
                          empty: (value) => EmptyCard(
                            title: 'Tidak ada data',
                            subtitle: 'Silakan tambahkan barang baru',
                            icon: Icons.shopping_cart,
                            buttonText: 'Tambah Barang',
                            onPressed: () => context.router.push(
                              ItemFormRoute(isEdit: false, item: Item.empty()),
                            ),
                          ),
                        ),
                        if (!isEditMode) buildPullToRefreshInfo(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: isEditMode ? buildBottomActionBar() : null,
      ),
    );
  }

  Widget buildBottomActionBar() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColor.white),
      child: SafeArea(
        child: Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: selectAllItems,
                child: Row(
                  children: [
                    Checkbox(
                      value:
                          selectedItems.length == items.length &&
                          items.isNotEmpty,
                      tristate: true,
                      onChanged: (value) => selectAllItems(),
                      activeColor: AppColor.primary,
                    ),
                    Text('Pilih Semua', style: AppStyle.md),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AppOutlineButton(
                text: 'Hapus Barang',
                onPressed: selectedItems.isEmpty ? null : deleteSelectedItems,
                borderColor: selectedItems.isEmpty
                    ? AppColor.borderSecondary
                    : AppColor.danger,
                textColor: selectedItems.isEmpty
                    ? AppColor.borderSecondary
                    : AppColor.danger,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPullToRefreshInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_upward, size: 16, color: AppColor.textSecondary),
          SizedBox(width: 4),
          Text(
            'Tarik untuk memuat data lainnya',
            style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
          ),
        ],
      ),
    );
  }
}
