// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ItemLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchChanged,
    required TResult Function(bool isRefresh) fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchChanged,
    TResult? Function(bool isRefresh)? fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchChanged,
    TResult Function(bool isRefresh)? fetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_Fetched value) fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_Fetched value)? fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemLoaderEventCopyWith<$Res> {
  factory $ItemLoaderEventCopyWith(
    ItemLoaderEvent value,
    $Res Function(ItemLoaderEvent) then,
  ) = _$ItemLoaderEventCopyWithImpl<$Res, ItemLoaderEvent>;
}

/// @nodoc
class _$ItemLoaderEventCopyWithImpl<$Res, $Val extends ItemLoaderEvent>
    implements $ItemLoaderEventCopyWith<$Res> {
  _$ItemLoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
    _$SearchChangedImpl value,
    $Res Function(_$SearchChangedImpl) then,
  ) = __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$ItemLoaderEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
    _$SearchChangedImpl _value,
    $Res Function(_$SearchChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? search = null}) {
    return _then(
      _$SearchChangedImpl(
        null == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'ItemLoaderEvent.searchChanged(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchChanged,
    required TResult Function(bool isRefresh) fetched,
  }) {
    return searchChanged(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchChanged,
    TResult? Function(bool isRefresh)? fetched,
  }) {
    return searchChanged?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchChanged,
    TResult Function(bool isRefresh)? fetched,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_Fetched value) fetched,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements ItemLoaderEvent {
  const factory _SearchChanged(final String search) = _$SearchChangedImpl;

  String get search;

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
    _$FetchedImpl value,
    $Res Function(_$FetchedImpl) then,
  ) = __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$ItemLoaderEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
    _$FetchedImpl _value,
    $Res Function(_$FetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$FetchedImpl(
        isRefresh: null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'ItemLoaderEvent.fetched(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchChanged,
    required TResult Function(bool isRefresh) fetched,
  }) {
    return fetched(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchChanged,
    TResult? Function(bool isRefresh)? fetched,
  }) {
    return fetched?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchChanged,
    TResult Function(bool isRefresh)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ItemLoaderEvent {
  const factory _Fetched({final bool isRefresh}) = _$FetchedImpl;

  bool get isRefresh;

  /// Create a copy of ItemLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemLoaderState {
  List<Item> get items => throw _privateConstructorUsedError;
  Option<ItemFailure> get failureOptionItem =>
      throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;

  /// Create a copy of ItemLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemLoaderStateCopyWith<ItemLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemLoaderStateCopyWith<$Res> {
  factory $ItemLoaderStateCopyWith(
    ItemLoaderState value,
    $Res Function(ItemLoaderState) then,
  ) = _$ItemLoaderStateCopyWithImpl<$Res, ItemLoaderState>;
  @useResult
  $Res call({
    List<Item> items,
    Option<ItemFailure> failureOptionItem,
    String? categoryId,
    String? search,
    bool isFetching,
    bool hasReachedMax,
    int page,
    int totalItems,
  });
}

/// @nodoc
class _$ItemLoaderStateCopyWithImpl<$Res, $Val extends ItemLoaderState>
    implements $ItemLoaderStateCopyWith<$Res> {
  _$ItemLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? failureOptionItem = null,
    Object? categoryId = freezed,
    Object? search = freezed,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? page = null,
    Object? totalItems = null,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Item>,
            failureOptionItem: null == failureOptionItem
                ? _value.failureOptionItem
                : failureOptionItem // ignore: cast_nullable_to_non_nullable
                      as Option<ItemFailure>,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            search: freezed == search
                ? _value.search
                : search // ignore: cast_nullable_to_non_nullable
                      as String?,
            isFetching: null == isFetching
                ? _value.isFetching
                : isFetching // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasReachedMax: null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                      as bool,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            totalItems: null == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemLoaderStateImplCopyWith<$Res>
    implements $ItemLoaderStateCopyWith<$Res> {
  factory _$$ItemLoaderStateImplCopyWith(
    _$ItemLoaderStateImpl value,
    $Res Function(_$ItemLoaderStateImpl) then,
  ) = __$$ItemLoaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Item> items,
    Option<ItemFailure> failureOptionItem,
    String? categoryId,
    String? search,
    bool isFetching,
    bool hasReachedMax,
    int page,
    int totalItems,
  });
}

/// @nodoc
class __$$ItemLoaderStateImplCopyWithImpl<$Res>
    extends _$ItemLoaderStateCopyWithImpl<$Res, _$ItemLoaderStateImpl>
    implements _$$ItemLoaderStateImplCopyWith<$Res> {
  __$$ItemLoaderStateImplCopyWithImpl(
    _$ItemLoaderStateImpl _value,
    $Res Function(_$ItemLoaderStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? failureOptionItem = null,
    Object? categoryId = freezed,
    Object? search = freezed,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? page = null,
    Object? totalItems = null,
  }) {
    return _then(
      _$ItemLoaderStateImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Item>,
        failureOptionItem: null == failureOptionItem
            ? _value.failureOptionItem
            : failureOptionItem // ignore: cast_nullable_to_non_nullable
                  as Option<ItemFailure>,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        isFetching: null == isFetching
            ? _value.isFetching
            : isFetching // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        totalItems: null == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ItemLoaderStateImpl implements _ItemLoaderState {
  const _$ItemLoaderStateImpl({
    required final List<Item> items,
    required this.failureOptionItem,
    this.categoryId,
    this.search,
    this.isFetching = false,
    this.hasReachedMax = false,
    this.page = 1,
    this.totalItems = 0,
  }) : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Option<ItemFailure> failureOptionItem;
  @override
  final String? categoryId;
  @override
  final String? search;
  @override
  @JsonKey()
  final bool isFetching;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int totalItems;

  @override
  String toString() {
    return 'ItemLoaderState(items: $items, failureOptionItem: $failureOptionItem, categoryId: $categoryId, search: $search, isFetching: $isFetching, hasReachedMax: $hasReachedMax, page: $page, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemLoaderStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.failureOptionItem, failureOptionItem) ||
                other.failureOptionItem == failureOptionItem) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    failureOptionItem,
    categoryId,
    search,
    isFetching,
    hasReachedMax,
    page,
    totalItems,
  );

  /// Create a copy of ItemLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemLoaderStateImplCopyWith<_$ItemLoaderStateImpl> get copyWith =>
      __$$ItemLoaderStateImplCopyWithImpl<_$ItemLoaderStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ItemLoaderState implements ItemLoaderState {
  const factory _ItemLoaderState({
    required final List<Item> items,
    required final Option<ItemFailure> failureOptionItem,
    final String? categoryId,
    final String? search,
    final bool isFetching,
    final bool hasReachedMax,
    final int page,
    final int totalItems,
  }) = _$ItemLoaderStateImpl;

  @override
  List<Item> get items;
  @override
  Option<ItemFailure> get failureOptionItem;
  @override
  String? get categoryId;
  @override
  String? get search;
  @override
  bool get isFetching;
  @override
  bool get hasReachedMax;
  @override
  int get page;
  @override
  int get totalItems;

  /// Create a copy of ItemLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemLoaderStateImplCopyWith<_$ItemLoaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
