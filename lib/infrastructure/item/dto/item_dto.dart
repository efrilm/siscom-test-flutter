part of '../item_dtos.dart';

@freezed
class ItemDto with _$ItemDto {
  const ItemDto._();

  const factory ItemDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'stock') int? stock,
    @JsonKey(name: 'item_group') String? itemGroup,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  Item toDomain() => Item(
    id: id ?? '',
    itemName: itemName ?? '',
    categoryId: categoryId ?? '',
    stock: stock ?? 0,
    itemGroup: itemGroup ?? '',
    price: price ?? 0,
    category: category?.toDomain() ?? Category.empty(),
    createdAt: createdAt ?? DateTime.now(),
    updatedAt: updatedAt ?? DateTime.now(),
  );
}

@freezed
class ItemListDto with _$ItemListDto {
  const ItemListDto._();

  const factory ItemListDto({
    @JsonKey(name: 'data') List<ItemDto>? data,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _ItemListDto;

  factory ItemListDto.fromJson(Map<String, dynamic> json) =>
      _$ItemListDtoFromJson(json);

  ItemList toDomain() => ItemList(
    data: data?.map((e) => e.toDomain()).toList() ?? [],
    total: total ?? 0,
    page: page ?? 1,
    limit: limit ?? 10,
    totalPages: totalPages ?? 1,
  );
}
