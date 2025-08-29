// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDtoImpl _$$ItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$ItemDtoImpl(
      id: json['id'] as String?,
      itemName: json['item_name'] as String?,
      categoryId: json['category_id'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
      itemGroup: json['item_group'] as String?,
      price: (json['price'] as num?)?.toInt(),
      category: json['category'] == null
          ? null
          : CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ItemDtoImplToJson(_$ItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_name': instance.itemName,
      'category_id': instance.categoryId,
      'stock': instance.stock,
      'item_group': instance.itemGroup,
      'price': instance.price,
      'category': instance.category,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$ItemListDtoImpl _$$ItemListDtoImplFromJson(Map<String, dynamic> json) =>
    _$ItemListDtoImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ItemListDtoImplToJson(_$ItemListDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
