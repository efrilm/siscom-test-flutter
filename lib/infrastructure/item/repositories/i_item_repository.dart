import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/item/item.dart';
import '../datasource/remote_data_provider.dart';

@Injectable(as: IItemRepository)
class ItemRepository implements IItemRepository {
  final ItemRemoteDataProvider _dataProvider;
  final String _logName = 'ItemRepository';

  ItemRepository(this._dataProvider);

  @override
  Future<Either<ItemFailure, ItemList>> get({
    int page = 1,
    int limit = 10,
    String? search,
  }) async {
    try {
      final result = await _dataProvider.fetch(
        page: page,
        limit: limit,
        search: search,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final auth = result.data!.toDomain();
      return right(auth);
    } catch (e, s) {
      log('getItemError', name: _logName, error: e, stackTrace: s);
      return left(const ItemFailure.unexpectedError());
    }
  }

  @override
  Future<Either<ItemFailure, Item>> store({
    required String itemName,
    required String categoryId,
    required String stock,
    required String itemGroup,
    required String price,
  }) async {
    try {
      final result = await _dataProvider.store(
        itemName: itemName,
        categoryId: categoryId,
        stock: int.tryParse(stock) ?? 0,
        itemGroup: itemGroup,
        price: int.tryParse(price) ?? 0,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final auth = result.data!.toDomain();
      return right(auth);
    } catch (e, s) {
      log('storeItemError', name: _logName, error: e, stackTrace: s);
      return left(const ItemFailure.unexpectedError());
    }
  }
}
