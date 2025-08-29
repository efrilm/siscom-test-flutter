// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String? get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_group')
  String? get itemGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res, ItemDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'stock') int? stock,
    @JsonKey(name: 'item_group') String? itemGroup,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });

  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res, $Val extends ItemDto>
    implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itemName = freezed,
    Object? categoryId = freezed,
    Object? stock = freezed,
    Object? itemGroup = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            itemName: freezed == itemName
                ? _value.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            stock: freezed == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemGroup: freezed == itemGroup
                ? _value.itemGroup
                : itemGroup // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as CategoryDto?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemDtoImplCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$ItemDtoImplCopyWith(
    _$ItemDtoImpl value,
    $Res Function(_$ItemDtoImpl) then,
  ) = __$$ItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'stock') int? stock,
    @JsonKey(name: 'item_group') String? itemGroup,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });

  @override
  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ItemDtoImplCopyWithImpl<$Res>
    extends _$ItemDtoCopyWithImpl<$Res, _$ItemDtoImpl>
    implements _$$ItemDtoImplCopyWith<$Res> {
  __$$ItemDtoImplCopyWithImpl(
    _$ItemDtoImpl _value,
    $Res Function(_$ItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itemName = freezed,
    Object? categoryId = freezed,
    Object? stock = freezed,
    Object? itemGroup = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ItemDtoImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        itemName: freezed == itemName
            ? _value.itemName
            : itemName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        stock: freezed == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemGroup: freezed == itemGroup
            ? _value.itemGroup
            : itemGroup // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as CategoryDto?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDtoImpl extends _ItemDto {
  const _$ItemDtoImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'item_name') this.itemName,
    @JsonKey(name: 'category_id') this.categoryId,
    @JsonKey(name: 'stock') this.stock,
    @JsonKey(name: 'item_group') this.itemGroup,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'category') this.category,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : super._();

  factory _$ItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'item_name')
  final String? itemName;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'stock')
  final int? stock;
  @override
  @JsonKey(name: 'item_group')
  final String? itemGroup;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'category')
  final CategoryDto? category;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ItemDto(id: $id, itemName: $itemName, categoryId: $categoryId, stock: $stock, itemGroup: $itemGroup, price: $price, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.itemGroup, itemGroup) ||
                other.itemGroup == itemGroup) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    itemName,
    categoryId,
    stock,
    itemGroup,
    price,
    category,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      __$$ItemDtoImplCopyWithImpl<_$ItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDtoImplToJson(this);
  }
}

abstract class _ItemDto extends ItemDto {
  const factory _ItemDto({
    @JsonKey(name: 'id') final String? id,
    @JsonKey(name: 'item_name') final String? itemName,
    @JsonKey(name: 'category_id') final String? categoryId,
    @JsonKey(name: 'stock') final int? stock,
    @JsonKey(name: 'item_group') final String? itemGroup,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'category') final CategoryDto? category,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$ItemDtoImpl;
  const _ItemDto._() : super._();

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$ItemDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'item_name')
  String? get itemName;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'stock')
  int? get stock;
  @override
  @JsonKey(name: 'item_group')
  String? get itemGroup;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of ItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemListDto _$ItemListDtoFromJson(Map<String, dynamic> json) {
  return _ItemListDto.fromJson(json);
}

/// @nodoc
mixin _$ItemListDto {
  @JsonKey(name: 'data')
  List<ItemDto>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int? get totalPages => throw _privateConstructorUsedError;

  /// Serializes this ItemListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemListDtoCopyWith<ItemListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListDtoCopyWith<$Res> {
  factory $ItemListDtoCopyWith(
    ItemListDto value,
    $Res Function(ItemListDto) then,
  ) = _$ItemListDtoCopyWithImpl<$Res, ItemListDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'data') List<ItemDto>? data,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'totalPages') int? totalPages,
  });
}

/// @nodoc
class _$ItemListDtoCopyWithImpl<$Res, $Val extends ItemListDto>
    implements $ItemListDtoCopyWith<$Res> {
  _$ItemListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _value.copyWith(
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<ItemDto>?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            limit: freezed == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPages: freezed == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemListDtoImplCopyWith<$Res>
    implements $ItemListDtoCopyWith<$Res> {
  factory _$$ItemListDtoImplCopyWith(
    _$ItemListDtoImpl value,
    $Res Function(_$ItemListDtoImpl) then,
  ) = __$$ItemListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'data') List<ItemDto>? data,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'totalPages') int? totalPages,
  });
}

/// @nodoc
class __$$ItemListDtoImplCopyWithImpl<$Res>
    extends _$ItemListDtoCopyWithImpl<$Res, _$ItemListDtoImpl>
    implements _$$ItemListDtoImplCopyWith<$Res> {
  __$$ItemListDtoImplCopyWithImpl(
    _$ItemListDtoImpl _value,
    $Res Function(_$ItemListDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _$ItemListDtoImpl(
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<ItemDto>?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPages: freezed == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemListDtoImpl extends _ItemListDto {
  const _$ItemListDtoImpl({
    @JsonKey(name: 'data') final List<ItemDto>? data,
    @JsonKey(name: 'total') this.total,
    @JsonKey(name: 'page') this.page,
    @JsonKey(name: 'limit') this.limit,
    @JsonKey(name: 'totalPages') this.totalPages,
  }) : _data = data,
       super._();

  factory _$ItemListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemListDtoImplFromJson(json);

  final List<ItemDto>? _data;
  @override
  @JsonKey(name: 'data')
  List<ItemDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'limit')
  final int? limit;
  @override
  @JsonKey(name: 'totalPages')
  final int? totalPages;

  @override
  String toString() {
    return 'ItemListDto(data: $data, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    total,
    page,
    limit,
    totalPages,
  );

  /// Create a copy of ItemListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemListDtoImplCopyWith<_$ItemListDtoImpl> get copyWith =>
      __$$ItemListDtoImplCopyWithImpl<_$ItemListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListDtoImplToJson(this);
  }
}

abstract class _ItemListDto extends ItemListDto {
  const factory _ItemListDto({
    @JsonKey(name: 'data') final List<ItemDto>? data,
    @JsonKey(name: 'total') final int? total,
    @JsonKey(name: 'page') final int? page,
    @JsonKey(name: 'limit') final int? limit,
    @JsonKey(name: 'totalPages') final int? totalPages,
  }) = _$ItemListDtoImpl;
  const _ItemListDto._() : super._();

  factory _ItemListDto.fromJson(Map<String, dynamic> json) =
      _$ItemListDtoImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<ItemDto>? get data;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'limit')
  int? get limit;
  @override
  @JsonKey(name: 'totalPages')
  int? get totalPages;

  /// Create a copy of ItemListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemListDtoImplCopyWith<_$ItemListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
