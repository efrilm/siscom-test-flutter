import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data_channel/data_channel.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api/api_client.dart';
import '../../../common/api/api_failure.dart';
import '../../../common/url/api_path.dart';
import '../../../domain/item/item.dart';
import '../item_dtos.dart';

@injectable
class ItemRemoteDataProvider {
  final ApiClient _apiClient;
  final String _logName = 'ItemRemoteDataProvider';

  ItemRemoteDataProvider(this._apiClient);

  Future<DC<ItemFailure, ItemListDto>> fetch({
    int page = 1,
    int limit = 10,
    String? search,
  }) async {
    try {
      Map<String, dynamic> params = {'page': page, 'limit': limit};

      if (search != null) {
        params['search'] = search;
      }

      final response = await _apiClient.get(ApiPath.item, params: params);

      if (response.data['data'] == null) {
        return DC.error(ItemFailure.empty());
      }

      if ((response.data['data']['data'] as List).isEmpty) {
        return DC.error(ItemFailure.empty());
      }

      final dto = ItemListDto.fromJson(response.data['data']);

      return DC.data(dto);
    } on ApiFailure catch (e, s) {
      log('fetchItemError', name: _logName, error: e, stackTrace: s);
      return DC.error(ItemFailure.serverError(e));
    }
  }

  Future<DC<ItemFailure, ItemDto>> store({
    required String itemName,
    required String categoryId,
    required int stock,
    required String itemGroup,
    required int price,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiPath.item,
        data: {
          'item_name': itemName,
          'category_id': categoryId,
          'stock': stock,
          'item_group': itemGroup,
          'price': price,
        },
      );

      if (response.data['success'] == false) {
        return DC.error(
          ItemFailure.dynamicErrorMessage(response.data['message']),
        );
      }

      final dto = ItemDto.fromJson(response.data['data']);

      return DC.data(dto);
    } on ApiFailure catch (e, s) {
      log('storeItemError', name: _logName, error: e, stackTrace: s);
      return DC.error(ItemFailure.serverError(e));
    }
  }

  Future<DC<ItemFailure, ItemDto>> update({
    required String id,
    required String itemName,
    required String categoryId,
    required int stock,
    required String itemGroup,
    required int price,
  }) async {
    try {
      final response = await _apiClient.put(
        "${ApiPath.item}/$id",
        data: {
          'item_name': itemName,
          'category_id': categoryId,
          'stock': stock,
          'item_group': itemGroup,
          'price': price,
        },
      );

      if (response.data['success'] == false) {
        return DC.error(
          ItemFailure.dynamicErrorMessage(response.data['message']),
        );
      }

      final dto = ItemDto.fromJson(response.data['data']);

      return DC.data(dto);
    } on ApiFailure catch (e, s) {
      log('updateItemError', name: _logName, error: e, stackTrace: s);
      return DC.error(ItemFailure.serverError(e));
    }
  }

  Future<DC<ItemFailure, Unit>> destroy({required String id}) async {
    try {
      final response = await _apiClient.delete("${ApiPath.item}/$id");

      if (response.data['success'] == false) {
        return DC.error(
          ItemFailure.dynamicErrorMessage(response.data['message']),
        );
      }

      return DC.data(unit);
    } on ApiFailure catch (e, s) {
      log('destroyItemError', name: _logName, error: e, stackTrace: s);
      return DC.error(ItemFailure.serverError(e));
    }
  }

  Future<DC<ItemFailure, Unit>> bulkDestroy({required List<String> ids}) async {
    try {
      final response = await _apiClient.delete(
        ApiPath.item,
        data: {'ids': ids},
      );

      if (response.data['success'] == false) {
        return DC.error(
          ItemFailure.dynamicErrorMessage(response.data['message']),
        );
      }

      return DC.data(unit);
    } on ApiFailure catch (e, s) {
      log('destroyItemError', name: _logName, error: e, stackTrace: s);
      return DC.error(ItemFailure.serverError(e));
    }
  }
}
