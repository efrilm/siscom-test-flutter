// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  String get itemGroup => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({
    String id,
    String itemName,
    String categoryId,
    int stock,
    String itemGroup,
    int price,
    Category category,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemName = null,
    Object? categoryId = null,
    Object? stock = null,
    Object? itemGroup = null,
    Object? price = null,
    Object? category = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            itemName: null == itemName
                ? _value.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int,
            itemGroup: null == itemGroup
                ? _value.itemGroup
                : itemGroup // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as Category,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
    _$ItemImpl value,
    $Res Function(_$ItemImpl) then,
  ) = __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String itemName,
    String categoryId,
    int stock,
    String itemGroup,
    int price,
    Category category,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
    : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemName = null,
    Object? categoryId = null,
    Object? stock = null,
    Object? itemGroup = null,
    Object? price = null,
    Object? category = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        itemName: null == itemName
            ? _value.itemName
            : itemName // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int,
        itemGroup: null == itemGroup
            ? _value.itemGroup
            : itemGroup // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as Category,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$ItemImpl implements _Item {
  const _$ItemImpl({
    required this.id,
    required this.itemName,
    required this.categoryId,
    required this.stock,
    required this.itemGroup,
    required this.price,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final String id;
  @override
  final String itemName;
  @override
  final String categoryId;
  @override
  final int stock;
  @override
  final String itemGroup;
  @override
  final int price;
  @override
  final Category category;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Item(id: $id, itemName: $itemName, categoryId: $categoryId, stock: $stock, itemGroup: $itemGroup, price: $price, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
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

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item({
    required final String id,
    required final String itemName,
    required final String categoryId,
    required final int stock,
    required final String itemGroup,
    required final int price,
    required final Category category,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$ItemImpl;

  @override
  String get id;
  @override
  String get itemName;
  @override
  String get categoryId;
  @override
  int get stock;
  @override
  String get itemGroup;
  @override
  int get price;
  @override
  Category get category;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemList {
  List<Item> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Create a copy of ItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemListCopyWith<ItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListCopyWith<$Res> {
  factory $ItemListCopyWith(ItemList value, $Res Function(ItemList) then) =
      _$ItemListCopyWithImpl<$Res, ItemList>;
  @useResult
  $Res call({List<Item> data, int total, int page, int limit, int totalPages});
}

/// @nodoc
class _$ItemListCopyWithImpl<$Res, $Val extends ItemList>
    implements $ItemListCopyWith<$Res> {
  _$ItemListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Item>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemListImplCopyWith<$Res>
    implements $ItemListCopyWith<$Res> {
  factory _$$ItemListImplCopyWith(
    _$ItemListImpl value,
    $Res Function(_$ItemListImpl) then,
  ) = __$$ItemListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> data, int total, int page, int limit, int totalPages});
}

/// @nodoc
class __$$ItemListImplCopyWithImpl<$Res>
    extends _$ItemListCopyWithImpl<$Res, _$ItemListImpl>
    implements _$$ItemListImplCopyWith<$Res> {
  __$$ItemListImplCopyWithImpl(
    _$ItemListImpl _value,
    $Res Function(_$ItemListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$ItemListImpl(
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Item>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ItemListImpl implements _ItemList {
  const _$ItemListImpl({
    required final List<Item> data,
    required this.total,
    required this.page,
    required this.limit,
    required this.totalPages,
  }) : _data = data;

  final List<Item> _data;
  @override
  List<Item> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'ItemList(data: $data, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    total,
    page,
    limit,
    totalPages,
  );

  /// Create a copy of ItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemListImplCopyWith<_$ItemListImpl> get copyWith =>
      __$$ItemListImplCopyWithImpl<_$ItemListImpl>(this, _$identity);
}

abstract class _ItemList implements ItemList {
  const factory _ItemList({
    required final List<Item> data,
    required final int total,
    required final int page,
    required final int limit,
    required final int totalPages,
  }) = _$ItemListImpl;

  @override
  List<Item> get data;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get totalPages;

  /// Create a copy of ItemList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemListImplCopyWith<_$ItemListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function(String erroMessage) dynamicErrorMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure failure)? serverError,
    TResult? Function()? unexpectedError,
    TResult? Function()? empty,
    TResult? Function(String erroMessage)? dynamicErrorMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function(String erroMessage)? dynamicErrorMessage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_DynamicErrorMessage value) dynamicErrorMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DynamicErrorMessage value)? dynamicErrorMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_DynamicErrorMessage value)? dynamicErrorMessage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFailureCopyWith<$Res> {
  factory $ItemFailureCopyWith(
    ItemFailure value,
    $Res Function(ItemFailure) then,
  ) = _$ItemFailureCopyWithImpl<$Res, ItemFailure>;
}

/// @nodoc
class _$ItemFailureCopyWithImpl<$Res, $Val extends ItemFailure>
    implements $ItemFailureCopyWith<$Res> {
  _$ItemFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
    _$ServerErrorImpl value,
    $Res Function(_$ServerErrorImpl) then,
  ) = __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ItemFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
    _$ServerErrorImpl _value,
    $Res Function(_$ServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$ServerErrorImpl(
        null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as ApiFailure,
      ),
    );
  }

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiFailureCopyWith<$Res> get failure {
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl(this.failure);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'ItemFailure.serverError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function(String erroMessage) dynamicErrorMessage,
  }) {
    return serverError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure failure)? serverError,
    TResult? Function()? unexpectedError,
    TResult? Function()? empty,
    TResult? Function(String erroMessage)? dynamicErrorMessage,
  }) {
    return serverError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function(String erroMessage)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_DynamicErrorMessage value) dynamicErrorMessage,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DynamicErrorMessage value)? dynamicErrorMessage,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_DynamicErrorMessage value)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ItemFailure {
  const factory _ServerError(final ApiFailure failure) = _$ServerErrorImpl;

  ApiFailure get failure;

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(
    _$UnexpectedErrorImpl value,
    $Res Function(_$UnexpectedErrorImpl) then,
  ) = __$$UnexpectedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$ItemFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
    _$UnexpectedErrorImpl _value,
    $Res Function(_$UnexpectedErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnexpectedErrorImpl implements _UnexpectedError {
  const _$UnexpectedErrorImpl();

  @override
  String toString() {
    return 'ItemFailure.unexpectedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function(String erroMessage) dynamicErrorMessage,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure failure)? serverError,
    TResult? Function()? unexpectedError,
    TResult? Function()? empty,
    TResult? Function(String erroMessage)? dynamicErrorMessage,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function(String erroMessage)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_DynamicErrorMessage value) dynamicErrorMessage,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DynamicErrorMessage value)? dynamicErrorMessage,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_DynamicErrorMessage value)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements ItemFailure {
  const factory _UnexpectedError() = _$UnexpectedErrorImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
    _$EmptyImpl value,
    $Res Function(_$EmptyImpl) then,
  ) = __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$ItemFailureCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
    _$EmptyImpl _value,
    $Res Function(_$EmptyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'ItemFailure.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function(String erroMessage) dynamicErrorMessage,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure failure)? serverError,
    TResult? Function()? unexpectedError,
    TResult? Function()? empty,
    TResult? Function(String erroMessage)? dynamicErrorMessage,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function(String erroMessage)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_DynamicErrorMessage value) dynamicErrorMessage,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DynamicErrorMessage value)? dynamicErrorMessage,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_DynamicErrorMessage value)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ItemFailure {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$DynamicErrorMessageImplCopyWith<$Res> {
  factory _$$DynamicErrorMessageImplCopyWith(
    _$DynamicErrorMessageImpl value,
    $Res Function(_$DynamicErrorMessageImpl) then,
  ) = __$$DynamicErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String erroMessage});
}

/// @nodoc
class __$$DynamicErrorMessageImplCopyWithImpl<$Res>
    extends _$ItemFailureCopyWithImpl<$Res, _$DynamicErrorMessageImpl>
    implements _$$DynamicErrorMessageImplCopyWith<$Res> {
  __$$DynamicErrorMessageImplCopyWithImpl(
    _$DynamicErrorMessageImpl _value,
    $Res Function(_$DynamicErrorMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? erroMessage = null}) {
    return _then(
      _$DynamicErrorMessageImpl(
        null == erroMessage
            ? _value.erroMessage
            : erroMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DynamicErrorMessageImpl implements _DynamicErrorMessage {
  const _$DynamicErrorMessageImpl(this.erroMessage);

  @override
  final String erroMessage;

  @override
  String toString() {
    return 'ItemFailure.dynamicErrorMessage(erroMessage: $erroMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicErrorMessageImpl &&
            (identical(other.erroMessage, erroMessage) ||
                other.erroMessage == erroMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erroMessage);

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicErrorMessageImplCopyWith<_$DynamicErrorMessageImpl> get copyWith =>
      __$$DynamicErrorMessageImplCopyWithImpl<_$DynamicErrorMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function(String erroMessage) dynamicErrorMessage,
  }) {
    return dynamicErrorMessage(erroMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure failure)? serverError,
    TResult? Function()? unexpectedError,
    TResult? Function()? empty,
    TResult? Function(String erroMessage)? dynamicErrorMessage,
  }) {
    return dynamicErrorMessage?.call(erroMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function(String erroMessage)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (dynamicErrorMessage != null) {
      return dynamicErrorMessage(erroMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_DynamicErrorMessage value) dynamicErrorMessage,
  }) {
    return dynamicErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_DynamicErrorMessage value)? dynamicErrorMessage,
  }) {
    return dynamicErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_DynamicErrorMessage value)? dynamicErrorMessage,
    required TResult orElse(),
  }) {
    if (dynamicErrorMessage != null) {
      return dynamicErrorMessage(this);
    }
    return orElse();
  }
}

abstract class _DynamicErrorMessage implements ItemFailure {
  const factory _DynamicErrorMessage(final String erroMessage) =
      _$DynamicErrorMessageImpl;

  String get erroMessage;

  /// Create a copy of ItemFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicErrorMessageImplCopyWith<_$DynamicErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
