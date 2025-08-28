// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:siscom_test_flutter/domain/item/item.dart' as _i7;
import 'package:siscom_test_flutter/presentation/pages/Items/item_page.dart'
    as _i2;
import 'package:siscom_test_flutter/presentation/pages/Items/pages/item_form/item_form_page.dart'
    as _i1;
import 'package:siscom_test_flutter/presentation/pages/Items/pages/item_search/item_search_page.dart'
    as _i3;
import 'package:siscom_test_flutter/presentation/pages/splash/splash_page.dart'
    as _i4;

/// generated route for
/// [_i1.ItemFormPage]
class ItemFormRoute extends _i5.PageRouteInfo<ItemFormRouteArgs> {
  ItemFormRoute({
    _i6.Key? key,
    required bool isEdit,
    required _i7.Item item,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         ItemFormRoute.name,
         args: ItemFormRouteArgs(key: key, isEdit: isEdit, item: item),
         initialChildren: children,
       );

  static const String name = 'ItemFormRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemFormRouteArgs>();
      return _i5.WrappedRoute(
        child: _i1.ItemFormPage(
          key: args.key,
          isEdit: args.isEdit,
          item: args.item,
        ),
      );
    },
  );
}

class ItemFormRouteArgs {
  const ItemFormRouteArgs({this.key, required this.isEdit, required this.item});

  final _i6.Key? key;

  final bool isEdit;

  final _i7.Item item;

  @override
  String toString() {
    return 'ItemFormRouteArgs{key: $key, isEdit: $isEdit, item: $item}';
  }
}

/// generated route for
/// [_i2.ItemPage]
class ItemRoute extends _i5.PageRouteInfo<void> {
  const ItemRoute({List<_i5.PageRouteInfo>? children})
    : super(ItemRoute.name, initialChildren: children);

  static const String name = 'ItemRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.WrappedRoute(child: const _i2.ItemPage());
    },
  );
}

/// generated route for
/// [_i3.ItemSearchPage]
class ItemSearchRoute extends _i5.PageRouteInfo<void> {
  const ItemSearchRoute({List<_i5.PageRouteInfo>? children})
    : super(ItemSearchRoute.name, initialChildren: children);

  static const String name = 'ItemSearchRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.WrappedRoute(child: const _i3.ItemSearchPage());
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}
