// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:siscom_test_flutter/presentation/pages/Items/item_page.dart'
    as _i2;
import 'package:siscom_test_flutter/presentation/pages/Items/pages/item_form/item_form_page.dart'
    as _i1;
import 'package:siscom_test_flutter/presentation/pages/splash/splash_page.dart'
    as _i3;

/// generated route for
/// [_i1.ItemFormPage]
class ItemFormRoute extends _i4.PageRouteInfo<ItemFormRouteArgs> {
  ItemFormRoute({
    _i5.Key? key,
    required bool isEdit,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ItemFormRoute.name,
         args: ItemFormRouteArgs(key: key, isEdit: isEdit),
         initialChildren: children,
       );

  static const String name = 'ItemFormRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemFormRouteArgs>();
      return _i1.ItemFormPage(key: args.key, isEdit: args.isEdit);
    },
  );
}

class ItemFormRouteArgs {
  const ItemFormRouteArgs({this.key, required this.isEdit});

  final _i5.Key? key;

  final bool isEdit;

  @override
  String toString() {
    return 'ItemFormRouteArgs{key: $key, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i2.ItemPage]
class ItemRoute extends _i4.PageRouteInfo<void> {
  const ItemRoute({List<_i4.PageRouteInfo>? children})
    : super(ItemRoute.name, initialChildren: children);

  static const String name = 'ItemRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ItemPage();
    },
  );
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashPage();
    },
  );
}
