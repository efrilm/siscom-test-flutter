part of '../item.dart';

abstract class IItemRepository {
  Future<Either<ItemFailure, ItemList>> get({
    int page = 1,
    int limit = 1,
    String? search,
  });
}
