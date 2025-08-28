// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:siscom_test_flutter/presentation/pages/Items/item_page.dart'
    as _i1;
import 'package:siscom_test_flutter/presentation/pages/splash/splash_page.dart'
    as _i2;

/// generated route for
/// [_i1.ItemPage]
class ItemRoute extends _i3.PageRouteInfo<void> {
  const ItemRoute({List<_i3.PageRouteInfo>? children})
    : super(ItemRoute.name, initialChildren: children);

  static const String name = 'ItemRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.ItemPage();
    },
  );
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute({List<_i3.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SplashPage();
    },
  );
}
