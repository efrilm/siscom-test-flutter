part of '../item.dart';

abstract class IItemRepository {
  Future<Either<ItemFailure, ItemList>> get({
    int page = 1,
    int limit = 1,
    String? search,
  });

  Future<Either<ItemFailure, Item>> store({
    required String itemName,
    required String categoryId,
    required String stock,
    required String itemGroup,
    required String price,
  });
}
