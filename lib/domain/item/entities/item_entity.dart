part of '../item.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String id,
    required String itemName,
    required String categoryId,
    required int stock,
    required String itemGroup,
    required int price,
    required Category category,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Item;

  factory Item.empty() => Item(
    id: '',
    itemName: '',
    categoryId: '',
    stock: 0,
    itemGroup: '',
    price: 0,
    category: Category.empty(),
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
}

@freezed
class ItemList with _$ItemList {
  const factory ItemList({
    required List<Item> data,
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _ItemList;

  factory ItemList.empty() =>
      ItemList(data: [], total: 0, page: 0, limit: 0, totalPages: 0);
}
