import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
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
  final ScrollController _scrollController = ScrollController();

  void deleteSelectedItems() {
    DeleteConfirmationDialog.show(
      context: context,
      onConfirm: () {
        context.router.maybePop();
        context.read<ItemFormBloc>().add(ItemFormEvent.bulkDeleted());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ItemFormBloc, ItemFormState>(
          listenWhen: (previous, current) =>
              previous.isDeleteSubmitting != current.isDeleteSubmitting,
          listener: (context, state) {
            if (state.isDeleteSubmitting) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
          },
        ),
        BlocListener<ItemFormBloc, ItemFormState>(
          listenWhen: (previous, current) =>
              previous.isBulkDeleteSubmitting != current.isBulkDeleteSubmitting,
          listener: (context, state) {
            if (state.isBulkDeleteSubmitting) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
          },
        ),
        BlocListener<ItemFormBloc, ItemFormState>(
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
        ),
        BlocListener<ItemFormBloc, ItemFormState>(
          listenWhen: (previous, current) =>
              previous.failureOrBulkDeleteItemOption !=
              current.failureOrBulkDeleteItemOption,
          listener: (context, state) {
            state.failureOrBulkDeleteItemOption.fold(
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
        ),
      ],
      child: BlocBuilder<ItemFormBloc, ItemFormState>(
        builder: (context, state) {
          return BlocBuilder<ItemLoaderBloc, ItemLoaderState>(
            builder: (context, itemState) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(
                    state.isBulkDelete ? 'Pilih Barang' : 'List Stock Barang',
                  ),
                  leading: state.isBulkDelete
                      ? IconButton(
                          onPressed: () => context.read<ItemFormBloc>().add(
                            ItemFormEvent.toggleBulkDelete(),
                          ),
                          icon: const Icon(Icons.close),
                        )
                      : null,
                  actions: [
                    if (!state.isBulkDelete)
                      IconButton(
                        onPressed: () => context.router.push(ItemSearchRoute()),
                        icon: const Icon(Icons.search),
                      ),
                    if (state.isBulkDelete && state.selectedIds.isNotEmpty)
                      TextButton(
                        onPressed: () => context.read<ItemFormBloc>().add(
                          ItemFormEvent.selectAllItems(itemState.items),
                        ),
                        child: Text(
                          state.selectedIds.length == itemState.items.length
                              ? 'Batal Pilih Semua'
                              : 'Pilih Semua',
                          style: TextStyle(color: AppColor.primary),
                        ),
                      ),
                  ],
                ),
                floatingActionButton: !state.isBulkDelete
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
                body: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification is ScrollEndNotification &&
                        _scrollController.position.extentAfter == 0) {
                      context.read<ItemLoaderBloc>().add(
                        ItemLoaderEvent.fetched(),
                      );
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
                              isEditMode: state.isBulkDelete,
                              total: itemState.totalItems,
                              onEdit: () => context.read<ItemFormBloc>().add(
                                ItemFormEvent.toggleBulkDelete(),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: itemState.isFetching
                                ? ItemShimmer()
                                : SizedBox.shrink(),
                          ),
                          // Items List
                          SliverList(
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final item = itemState.items[index];

                              return ItemCard(
                                item: item,
                                isEditMode: state.isBulkDelete,
                                isSelected: state.selectedIds.contains(item.id),
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
                                  context.read<ItemFormBloc>().add(
                                    ItemFormEvent.toggleItemSelection(item.id),
                                  );
                                },
                                onLongPress: () {
                                  if (!state.isBulkDelete) {
                                    context.read<ItemFormBloc>().add(
                                      ItemFormEvent.toggleBulkDelete(),
                                    );
                                    context.read<ItemFormBloc>().add(
                                      ItemFormEvent.toggleItemSelection(
                                        item.id,
                                      ),
                                    );
                                  }
                                },
                              );
                            }, childCount: itemState.items.length),
                          ),
                          // Footer info
                          if (!state.isBulkDelete)
                            SliverToBoxAdapter(child: buildPullToRefreshInfo()),
                        ],
                      ),
                      (f) => SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            ItemHeading(
                              isEditMode: state.isBulkDelete,
                              total: itemState.totalItems,
                              onEdit: () => context.read<ItemFormBloc>().add(
                                ItemFormEvent.toggleBulkDelete(),
                              ),
                            ),
                            f.maybeMap(
                              orElse: () => EmptyCard(title: 'Tidak ada data'),
                              empty: (value) => EmptyCard(
                                title: 'Tidak ada data',
                                subtitle: 'Silakan tambahkan barang baru',
                                icon: Icons.shopping_cart,
                                buttonText: 'Tambah Barang',
                                onPressed: () => context.router.push(
                                  ItemFormRoute(
                                    isEdit: false,
                                    item: Item.empty(),
                                  ),
                                ),
                              ),
                            ),
                            if (!state.isBulkDelete) buildPullToRefreshInfo(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                bottomNavigationBar: state.isBulkDelete
                    ? buildBottomActionBar(state, itemState.items)
                    : null,
              );
            },
          );
        },
      ),
    );
  }

  Widget buildBottomActionBar(ItemFormState state, List<Item> items) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColor.white),
      child: SafeArea(
        child: Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () => context.read<ItemFormBloc>().add(
                  ItemFormEvent.selectAllItems(items),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value:
                          state.selectedIds.length == items.length &&
                          items.isNotEmpty,
                      tristate: true,
                      onChanged: (value) => context.read<ItemFormBloc>().add(
                        ItemFormEvent.selectAllItems(items),
                      ),
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
                onPressed: state.selectedIds.isEmpty
                    ? null
                    : deleteSelectedItems,
                borderColor: state.selectedIds.isEmpty
                    ? AppColor.borderSecondary
                    : AppColor.danger,
                textColor: state.selectedIds.isEmpty
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
