// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CategoryLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryLoaderEventCopyWith<$Res> {
  factory $CategoryLoaderEventCopyWith(
    CategoryLoaderEvent value,
    $Res Function(CategoryLoaderEvent) then,
  ) = _$CategoryLoaderEventCopyWithImpl<$Res, CategoryLoaderEvent>;
}

/// @nodoc
class _$CategoryLoaderEventCopyWithImpl<$Res, $Val extends CategoryLoaderEvent>
    implements $CategoryLoaderEventCopyWith<$Res> {
  _$CategoryLoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
    _$FetchedImpl value,
    $Res Function(_$FetchedImpl) then,
  ) = __$$FetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$CategoryLoaderEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
    _$FetchedImpl _value,
    $Res Function(_$FetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryLoaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl();

  @override
  String toString() {
    return 'CategoryLoaderEvent.fetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({required TResult Function() fetched}) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? fetched}) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements CategoryLoaderEvent {
  const factory _Fetched() = _$FetchedImpl;
}

/// @nodoc
mixin _$CategoryLoaderState {
  List<Category> get categories => throw _privateConstructorUsedError;
  Option<CategoryFailure> get failureOptionCategory =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  /// Create a copy of CategoryLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryLoaderStateCopyWith<CategoryLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryLoaderStateCopyWith<$Res> {
  factory $CategoryLoaderStateCopyWith(
    CategoryLoaderState value,
    $Res Function(CategoryLoaderState) then,
  ) = _$CategoryLoaderStateCopyWithImpl<$Res, CategoryLoaderState>;
  @useResult
  $Res call({
    List<Category> categories,
    Option<CategoryFailure> failureOptionCategory,
    bool isFetching,
  });
}

/// @nodoc
class _$CategoryLoaderStateCopyWithImpl<$Res, $Val extends CategoryLoaderState>
    implements $CategoryLoaderStateCopyWith<$Res> {
  _$CategoryLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? failureOptionCategory = null,
    Object? isFetching = null,
  }) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<Category>,
            failureOptionCategory: null == failureOptionCategory
                ? _value.failureOptionCategory
                : failureOptionCategory // ignore: cast_nullable_to_non_nullable
                      as Option<CategoryFailure>,
            isFetching: null == isFetching
                ? _value.isFetching
                : isFetching // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryLoaderStateImplCopyWith<$Res>
    implements $CategoryLoaderStateCopyWith<$Res> {
  factory _$$CategoryLoaderStateImplCopyWith(
    _$CategoryLoaderStateImpl value,
    $Res Function(_$CategoryLoaderStateImpl) then,
  ) = __$$CategoryLoaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Category> categories,
    Option<CategoryFailure> failureOptionCategory,
    bool isFetching,
  });
}

/// @nodoc
class __$$CategoryLoaderStateImplCopyWithImpl<$Res>
    extends _$CategoryLoaderStateCopyWithImpl<$Res, _$CategoryLoaderStateImpl>
    implements _$$CategoryLoaderStateImplCopyWith<$Res> {
  __$$CategoryLoaderStateImplCopyWithImpl(
    _$CategoryLoaderStateImpl _value,
    $Res Function(_$CategoryLoaderStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? failureOptionCategory = null,
    Object? isFetching = null,
  }) {
    return _then(
      _$CategoryLoaderStateImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<Category>,
        failureOptionCategory: null == failureOptionCategory
            ? _value.failureOptionCategory
            : failureOptionCategory // ignore: cast_nullable_to_non_nullable
                  as Option<CategoryFailure>,
        isFetching: null == isFetching
            ? _value.isFetching
            : isFetching // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CategoryLoaderStateImpl implements _CategoryLoaderState {
  const _$CategoryLoaderStateImpl({
    required final List<Category> categories,
    required this.failureOptionCategory,
    this.isFetching = false,
  }) : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final Option<CategoryFailure> failureOptionCategory;
  @override
  @JsonKey()
  final bool isFetching;

  @override
  String toString() {
    return 'CategoryLoaderState(categories: $categories, failureOptionCategory: $failureOptionCategory, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoaderStateImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.failureOptionCategory, failureOptionCategory) ||
                other.failureOptionCategory == failureOptionCategory) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    failureOptionCategory,
    isFetching,
  );

  /// Create a copy of CategoryLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoaderStateImplCopyWith<_$CategoryLoaderStateImpl> get copyWith =>
      __$$CategoryLoaderStateImplCopyWithImpl<_$CategoryLoaderStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoryLoaderState implements CategoryLoaderState {
  const factory _CategoryLoaderState({
    required final List<Category> categories,
    required final Option<CategoryFailure> failureOptionCategory,
    final bool isFetching,
  }) = _$CategoryLoaderStateImpl;

  @override
  List<Category> get categories;
  @override
  Option<CategoryFailure> get failureOptionCategory;
  @override
  bool get isFetching;

  /// Create a copy of CategoryLoaderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLoaderStateImplCopyWith<_$CategoryLoaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
