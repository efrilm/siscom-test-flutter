import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/item/item_loader/item_loader_bloc.dart';
import '../../../../../common/theme/theme.dart';
import '../../../../../injection.dart';
import '../../../../components/card/empty_card.dart';
import '../../../../components/field/field.dart';
import 'widgets/item_search_card.dart';
import 'widgets/item_search_shimmer.dart';

@RoutePage()
class ItemSearchPage extends StatefulWidget implements AutoRouteWrapper {
  const ItemSearchPage({super.key});

  @override
  State<ItemSearchPage> createState() => _ItemSearchPageState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<ItemLoaderBloc>()..add(ItemLoaderEvent.fetched(isRefresh: true)),
    child: this,
  );
}

class _ItemSearchPageState extends State<ItemSearchPage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _debounceTimer;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    // Cancel timer sebelumnya jika ada
    _debounceTimer?.cancel();

    // Buat timer baru dengan delay 500ms
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      context.read<ItemLoaderBloc>().add(ItemLoaderEvent.searchChanged(value));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemLoaderBloc, ItemLoaderState>(
      listenWhen: (previous, current) => previous.search != current.search,
      listener: (context, state) {
        context.read<ItemLoaderBloc>().add(
          ItemLoaderEvent.fetched(isRefresh: true),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: AppSearchFormField(onChanged: _onSearchChanged),
          titleSpacing: 0,
          actions: [SizedBox(width: 8)],
        ),
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
                        child: buildItemHeader(itemState.totalItems),
                      ),

                      SliverToBoxAdapter(
                        child: itemState.isFetching
                            ? ItemSearchShimmer()
                            : SizedBox.shrink(),
                      ),

                      // Items List
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final item = itemState.items[index];

                          return ItemSearchCard(item: item);
                        }, childCount: itemState.items.length),
                      ),
                      SliverToBoxAdapter(child: buildPullToRefreshInfo()),
                    ],
                  ),
                  (f) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        buildItemHeader(itemState.totalItems),
                        f.maybeMap(
                          orElse: () => EmptyCard(
                            title: 'Ada kesalahan terjadi',
                            subtitle: 'Silakan coba lagi',
                            icon: Icons.error,
                          ),
                          empty: (value) => EmptyCard(
                            title: 'Tidak ada data',
                            subtitle: 'Silakan tambahkan barang baru',
                            icon: Icons.shopping_cart,
                          ),
                        ),
                        buildPullToRefreshInfo(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
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
          Icon(Icons.refresh, size: 16, color: AppColor.info),
          SizedBox(width: 4),
          Text(
            'Refresh untuk melihat data lainnya',
            style: AppStyle.sm.copyWith(color: AppColor.info),
          ),
        ],
      ),
    );
  }

  Widget buildItemHeader(int total) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$total Data cocok',
            style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
          ),
        ],
      ),
    );
  }
}
