// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:siscom_test_flutter/application/category/category_loader/category_loader_bloc.dart'
    as _i552;
import 'package:siscom_test_flutter/application/item/item_form/item_form_bloc.dart'
    as _i636;
import 'package:siscom_test_flutter/application/item/item_loader/item_loader_bloc.dart'
    as _i777;
import 'package:siscom_test_flutter/common/api/api_client.dart' as _i234;
import 'package:siscom_test_flutter/common/di/di_auto_route.dart' as _i1057;
import 'package:siscom_test_flutter/common/di/di_connectivity.dart' as _i314;
import 'package:siscom_test_flutter/common/di/di_dio.dart' as _i937;
import 'package:siscom_test_flutter/common/di/di_shared_preferences.dart'
    as _i558;
import 'package:siscom_test_flutter/common/network/network_client.dart'
    as _i848;
import 'package:siscom_test_flutter/domain/category/category.dart' as _i767;
import 'package:siscom_test_flutter/domain/item/item.dart' as _i348;
import 'package:siscom_test_flutter/env.dart' as _i273;
import 'package:siscom_test_flutter/infrastructure/category/datasource/remote_data_provider.dart'
    as _i137;
import 'package:siscom_test_flutter/infrastructure/category/repositories/category_repository.dart'
    as _i60;
import 'package:siscom_test_flutter/infrastructure/item/datasource/remote_data_provider.dart'
    as _i668;
import 'package:siscom_test_flutter/infrastructure/item/repositories/i_item_repository.dart'
    as _i321;
import 'package:siscom_test_flutter/presentation/router/app_router.dart'
    as _i247;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final sharedPreferencesDi = _$SharedPreferencesDi();
    final dioDi = _$DioDi();
    final autoRouteDi = _$AutoRouteDi();
    final connectivityDi = _$ConnectivityDi();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesDi.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => dioDi.dio);
    gh.lazySingleton<_i247.AppRouter>(() => autoRouteDi.appRouter);
    gh.lazySingleton<_i895.Connectivity>(() => connectivityDi.connectivity);
    gh.lazySingleton<_i848.NetworkClient>(
      () => _i848.NetworkClient(gh<_i895.Connectivity>()),
    );
    gh.factory<_i273.Env>(() => _i273.DevEnv(), registerFor: {_dev});
    gh.factory<_i273.Env>(() => _i273.ProdEnv(), registerFor: {_prod});
    gh.lazySingleton<_i234.ApiClient>(
      () => _i234.ApiClient(gh<_i361.Dio>(), gh<_i273.Env>()),
    );
    gh.factory<_i137.CategoryRemoteDataProvider>(
      () => _i137.CategoryRemoteDataProvider(gh<_i234.ApiClient>()),
    );
    gh.factory<_i668.ItemRemoteDataProvider>(
      () => _i668.ItemRemoteDataProvider(gh<_i234.ApiClient>()),
    );
    gh.factory<_i767.ICategoryRepository>(
      () => _i60.CategoryRepository(gh<_i137.CategoryRemoteDataProvider>()),
    );
    gh.factory<_i348.IItemRepository>(
      () => _i321.ItemRepository(gh<_i668.ItemRemoteDataProvider>()),
    );
    gh.factory<_i552.CategoryLoaderBloc>(
      () => _i552.CategoryLoaderBloc(gh<_i767.ICategoryRepository>()),
    );
    gh.factory<_i777.ItemLoaderBloc>(
      () => _i777.ItemLoaderBloc(gh<_i348.IItemRepository>()),
    );
    gh.factory<_i636.ItemFormBloc>(
      () => _i636.ItemFormBloc(gh<_i348.IItemRepository>()),
    );
    return this;
  }
}

class _$SharedPreferencesDi extends _i558.SharedPreferencesDi {}

class _$DioDi extends _i937.DioDi {}

class _$AutoRouteDi extends _i1057.AutoRouteDi {}

class _$ConnectivityDi extends _i314.ConnectivityDi {}
