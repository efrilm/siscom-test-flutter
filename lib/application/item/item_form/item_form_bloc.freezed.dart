// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ItemFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFormEventCopyWith<$Res> {
  factory $ItemFormEventCopyWith(
    ItemFormEvent value,
    $Res Function(ItemFormEvent) then,
  ) = _$ItemFormEventCopyWithImpl<$Res, ItemFormEvent>;
}

/// @nodoc
class _$ItemFormEventCopyWithImpl<$Res, $Val extends ItemFormEvent>
    implements $ItemFormEventCopyWith<$Res> {
  _$ItemFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadItemImplCopyWith<$Res> {
  factory _$$LoadItemImplCopyWith(
    _$LoadItemImpl value,
    $Res Function(_$LoadItemImpl) then,
  ) = __$$LoadItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$LoadItemImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$LoadItemImpl>
    implements _$$LoadItemImplCopyWith<$Res> {
  __$$LoadItemImplCopyWithImpl(
    _$LoadItemImpl _value,
    $Res Function(_$LoadItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? item = null}) {
    return _then(
      _$LoadItemImpl(
        null == item
            ? _value.item
            : item // ignore: cast_nullable_to_non_nullable
                  as Item,
      ),
    );
  }

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$LoadItemImpl implements _LoadItem {
  const _$LoadItemImpl(this.item);

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemFormEvent.loadItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemImplCopyWith<_$LoadItemImpl> get copyWith =>
      __$$LoadItemImplCopyWithImpl<_$LoadItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return loadItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return loadItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (loadItem != null) {
      return loadItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return loadItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return loadItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (loadItem != null) {
      return loadItem(this);
    }
    return orElse();
  }
}

abstract class _LoadItem implements ItemFormEvent {
  const factory _LoadItem(final Item item) = _$LoadItemImpl;

  Item get item;

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadItemImplCopyWith<_$LoadItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsValidChangedImplCopyWith<$Res> {
  factory _$$IsValidChangedImplCopyWith(
    _$IsValidChangedImpl value,
    $Res Function(_$IsValidChangedImpl) then,
  ) = __$$IsValidChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsValidChangedImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$IsValidChangedImpl>
    implements _$$IsValidChangedImplCopyWith<$Res> {
  __$$IsValidChangedImplCopyWithImpl(
    _$IsValidChangedImpl _value,
    $Res Function(_$IsValidChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsValidChangedImpl implements _IsValidChanged {
  const _$IsValidChangedImpl();

  @override
  String toString() {
    return 'ItemFormEvent.isValidChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsValidChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return isValidChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return isValidChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (isValidChanged != null) {
      return isValidChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return isValidChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return isValidChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (isValidChanged != null) {
      return isValidChanged(this);
    }
    return orElse();
  }
}

abstract class _IsValidChanged implements ItemFormEvent {
  const factory _IsValidChanged() = _$IsValidChangedImpl;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(
    _$CategoryChangedImpl value,
    $Res Function(_$CategoryChangedImpl) then,
  ) = __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
    _$CategoryChangedImpl _value,
    $Res Function(_$CategoryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null}) {
    return _then(
      _$CategoryChangedImpl(
        null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as Category,
      ),
    );
  }

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategoryChangedImpl implements _CategoryChanged {
  const _$CategoryChangedImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'ItemFormEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements ItemFormEvent {
  const factory _CategoryChanged(final Category category) =
      _$CategoryChangedImpl;

  Category get category;

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemGroupChangedImplCopyWith<$Res> {
  factory _$$ItemGroupChangedImplCopyWith(
    _$ItemGroupChangedImpl value,
    $Res Function(_$ItemGroupChangedImpl) then,
  ) = __$$ItemGroupChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemGroup});
}

/// @nodoc
class __$$ItemGroupChangedImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$ItemGroupChangedImpl>
    implements _$$ItemGroupChangedImplCopyWith<$Res> {
  __$$ItemGroupChangedImplCopyWithImpl(
    _$ItemGroupChangedImpl _value,
    $Res Function(_$ItemGroupChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemGroup = null}) {
    return _then(
      _$ItemGroupChangedImpl(
        null == itemGroup
            ? _value.itemGroup
            : itemGroup // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ItemGroupChangedImpl implements _ItemGroupChanged {
  const _$ItemGroupChangedImpl(this.itemGroup);

  @override
  final String itemGroup;

  @override
  String toString() {
    return 'ItemFormEvent.itemGroupChanged(itemGroup: $itemGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemGroupChangedImpl &&
            (identical(other.itemGroup, itemGroup) ||
                other.itemGroup == itemGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemGroup);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemGroupChangedImplCopyWith<_$ItemGroupChangedImpl> get copyWith =>
      __$$ItemGroupChangedImplCopyWithImpl<_$ItemGroupChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return itemGroupChanged(itemGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return itemGroupChanged?.call(itemGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (itemGroupChanged != null) {
      return itemGroupChanged(itemGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return itemGroupChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return itemGroupChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (itemGroupChanged != null) {
      return itemGroupChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemGroupChanged implements ItemFormEvent {
  const factory _ItemGroupChanged(final String itemGroup) =
      _$ItemGroupChangedImpl;

  String get itemGroup;

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemGroupChangedImplCopyWith<_$ItemGroupChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
    _$CreatedImpl value,
    $Res Function(_$CreatedImpl) then,
  ) = __$$CreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
    _$CreatedImpl _value,
    $Res Function(_$CreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl();

  @override
  String toString() {
    return 'ItemFormEvent.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements ItemFormEvent {
  const factory _Created() = _$CreatedImpl;
}

/// @nodoc
abstract class _$$EditedImplCopyWith<$Res> {
  factory _$$EditedImplCopyWith(
    _$EditedImpl value,
    $Res Function(_$EditedImpl) then,
  ) = __$$EditedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
    _$EditedImpl _value,
    $Res Function(_$EditedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl();

  @override
  String toString() {
    return 'ItemFormEvent.edited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) loadItem,
    required TResult Function() isValidChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String itemGroup) itemGroupChanged,
    required TResult Function() created,
    required TResult Function() edited,
  }) {
    return edited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Item item)? loadItem,
    TResult? Function()? isValidChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function(String itemGroup)? itemGroupChanged,
    TResult? Function()? created,
    TResult? Function()? edited,
  }) {
    return edited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? loadItem,
    TResult Function()? isValidChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String itemGroup)? itemGroupChanged,
    TResult Function()? created,
    TResult Function()? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
    required TResult Function(_IsValidChanged value) isValidChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemGroupChanged value) itemGroupChanged,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
    TResult? Function(_IsValidChanged value)? isValidChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult? Function(_Created value)? created,
    TResult? Function(_Edited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    TResult Function(_IsValidChanged value)? isValidChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemGroupChanged value)? itemGroupChanged,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements ItemFormEvent {
  const factory _Edited() = _$EditedImpl;
}

/// @nodoc
mixin _$ItemFormState {
  Item get item => throw _privateConstructorUsedError;
  TextEditingController get itemNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get stockController =>
      throw _privateConstructorUsedError;
  TextEditingController get priceController =>
      throw _privateConstructorUsedError;
  Option<Either<ItemFailure, Item>> get failureOrCreateItemOption =>
      throw _privateConstructorUsedError;
  Option<Either<ItemFailure, Item>> get failureOrEditItemOption =>
      throw _privateConstructorUsedError;
  String? get itemGroup => throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isCreateSubmitting => throw _privateConstructorUsedError;
  bool get isEditSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemFormStateCopyWith<ItemFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFormStateCopyWith<$Res> {
  factory $ItemFormStateCopyWith(
    ItemFormState value,
    $Res Function(ItemFormState) then,
  ) = _$ItemFormStateCopyWithImpl<$Res, ItemFormState>;
  @useResult
  $Res call({
    Item item,
    TextEditingController itemNameController,
    TextEditingController stockController,
    TextEditingController priceController,
    Option<Either<ItemFailure, Item>> failureOrCreateItemOption,
    Option<Either<ItemFailure, Item>> failureOrEditItemOption,
    String? itemGroup,
    Category? selectedCategory,
    bool isValid,
    bool isCreateSubmitting,
    bool isEditSubmitting,
    bool showErrorMessages,
  });

  $ItemCopyWith<$Res> get item;
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$ItemFormStateCopyWithImpl<$Res, $Val extends ItemFormState>
    implements $ItemFormStateCopyWith<$Res> {
  _$ItemFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? itemNameController = null,
    Object? stockController = null,
    Object? priceController = null,
    Object? failureOrCreateItemOption = null,
    Object? failureOrEditItemOption = null,
    Object? itemGroup = freezed,
    Object? selectedCategory = freezed,
    Object? isValid = null,
    Object? isCreateSubmitting = null,
    Object? isEditSubmitting = null,
    Object? showErrorMessages = null,
  }) {
    return _then(
      _value.copyWith(
            item: null == item
                ? _value.item
                : item // ignore: cast_nullable_to_non_nullable
                      as Item,
            itemNameController: null == itemNameController
                ? _value.itemNameController
                : itemNameController // ignore: cast_nullable_to_non_nullable
                      as TextEditingController,
            stockController: null == stockController
                ? _value.stockController
                : stockController // ignore: cast_nullable_to_non_nullable
                      as TextEditingController,
            priceController: null == priceController
                ? _value.priceController
                : priceController // ignore: cast_nullable_to_non_nullable
                      as TextEditingController,
            failureOrCreateItemOption: null == failureOrCreateItemOption
                ? _value.failureOrCreateItemOption
                : failureOrCreateItemOption // ignore: cast_nullable_to_non_nullable
                      as Option<Either<ItemFailure, Item>>,
            failureOrEditItemOption: null == failureOrEditItemOption
                ? _value.failureOrEditItemOption
                : failureOrEditItemOption // ignore: cast_nullable_to_non_nullable
                      as Option<Either<ItemFailure, Item>>,
            itemGroup: freezed == itemGroup
                ? _value.itemGroup
                : itemGroup // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedCategory: freezed == selectedCategory
                ? _value.selectedCategory
                : selectedCategory // ignore: cast_nullable_to_non_nullable
                      as Category?,
            isValid: null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCreateSubmitting: null == isCreateSubmitting
                ? _value.isCreateSubmitting
                : isCreateSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isEditSubmitting: null == isEditSubmitting
                ? _value.isEditSubmitting
                : isEditSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            showErrorMessages: null == showErrorMessages
                ? _value.showErrorMessages
                : showErrorMessages // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemFormStateImplCopyWith<$Res>
    implements $ItemFormStateCopyWith<$Res> {
  factory _$$ItemFormStateImplCopyWith(
    _$ItemFormStateImpl value,
    $Res Function(_$ItemFormStateImpl) then,
  ) = __$$ItemFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Item item,
    TextEditingController itemNameController,
    TextEditingController stockController,
    TextEditingController priceController,
    Option<Either<ItemFailure, Item>> failureOrCreateItemOption,
    Option<Either<ItemFailure, Item>> failureOrEditItemOption,
    String? itemGroup,
    Category? selectedCategory,
    bool isValid,
    bool isCreateSubmitting,
    bool isEditSubmitting,
    bool showErrorMessages,
  });

  @override
  $ItemCopyWith<$Res> get item;
  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$ItemFormStateImplCopyWithImpl<$Res>
    extends _$ItemFormStateCopyWithImpl<$Res, _$ItemFormStateImpl>
    implements _$$ItemFormStateImplCopyWith<$Res> {
  __$$ItemFormStateImplCopyWithImpl(
    _$ItemFormStateImpl _value,
    $Res Function(_$ItemFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? itemNameController = null,
    Object? stockController = null,
    Object? priceController = null,
    Object? failureOrCreateItemOption = null,
    Object? failureOrEditItemOption = null,
    Object? itemGroup = freezed,
    Object? selectedCategory = freezed,
    Object? isValid = null,
    Object? isCreateSubmitting = null,
    Object? isEditSubmitting = null,
    Object? showErrorMessages = null,
  }) {
    return _then(
      _$ItemFormStateImpl(
        item: null == item
            ? _value.item
            : item // ignore: cast_nullable_to_non_nullable
                  as Item,
        itemNameController: null == itemNameController
            ? _value.itemNameController
            : itemNameController // ignore: cast_nullable_to_non_nullable
                  as TextEditingController,
        stockController: null == stockController
            ? _value.stockController
            : stockController // ignore: cast_nullable_to_non_nullable
                  as TextEditingController,
        priceController: null == priceController
            ? _value.priceController
            : priceController // ignore: cast_nullable_to_non_nullable
                  as TextEditingController,
        failureOrCreateItemOption: null == failureOrCreateItemOption
            ? _value.failureOrCreateItemOption
            : failureOrCreateItemOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ItemFailure, Item>>,
        failureOrEditItemOption: null == failureOrEditItemOption
            ? _value.failureOrEditItemOption
            : failureOrEditItemOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ItemFailure, Item>>,
        itemGroup: freezed == itemGroup
            ? _value.itemGroup
            : itemGroup // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedCategory: freezed == selectedCategory
            ? _value.selectedCategory
            : selectedCategory // ignore: cast_nullable_to_non_nullable
                  as Category?,
        isValid: null == isValid
            ? _value.isValid
            : isValid // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCreateSubmitting: null == isCreateSubmitting
            ? _value.isCreateSubmitting
            : isCreateSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isEditSubmitting: null == isEditSubmitting
            ? _value.isEditSubmitting
            : isEditSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        showErrorMessages: null == showErrorMessages
            ? _value.showErrorMessages
            : showErrorMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ItemFormStateImpl implements _ItemFormState {
  const _$ItemFormStateImpl({
    required this.item,
    required this.itemNameController,
    required this.stockController,
    required this.priceController,
    required this.failureOrCreateItemOption,
    required this.failureOrEditItemOption,
    this.itemGroup,
    this.selectedCategory,
    this.isValid = false,
    this.isCreateSubmitting = false,
    this.isEditSubmitting = false,
    this.showErrorMessages = false,
  });

  @override
  final Item item;
  @override
  final TextEditingController itemNameController;
  @override
  final TextEditingController stockController;
  @override
  final TextEditingController priceController;
  @override
  final Option<Either<ItemFailure, Item>> failureOrCreateItemOption;
  @override
  final Option<Either<ItemFailure, Item>> failureOrEditItemOption;
  @override
  final String? itemGroup;
  @override
  final Category? selectedCategory;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isCreateSubmitting;
  @override
  @JsonKey()
  final bool isEditSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessages;

  @override
  String toString() {
    return 'ItemFormState(item: $item, itemNameController: $itemNameController, stockController: $stockController, priceController: $priceController, failureOrCreateItemOption: $failureOrCreateItemOption, failureOrEditItemOption: $failureOrEditItemOption, itemGroup: $itemGroup, selectedCategory: $selectedCategory, isValid: $isValid, isCreateSubmitting: $isCreateSubmitting, isEditSubmitting: $isEditSubmitting, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFormStateImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.itemNameController, itemNameController) ||
                other.itemNameController == itemNameController) &&
            (identical(other.stockController, stockController) ||
                other.stockController == stockController) &&
            (identical(other.priceController, priceController) ||
                other.priceController == priceController) &&
            (identical(
                  other.failureOrCreateItemOption,
                  failureOrCreateItemOption,
                ) ||
                other.failureOrCreateItemOption == failureOrCreateItemOption) &&
            (identical(
                  other.failureOrEditItemOption,
                  failureOrEditItemOption,
                ) ||
                other.failureOrEditItemOption == failureOrEditItemOption) &&
            (identical(other.itemGroup, itemGroup) ||
                other.itemGroup == itemGroup) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isCreateSubmitting, isCreateSubmitting) ||
                other.isCreateSubmitting == isCreateSubmitting) &&
            (identical(other.isEditSubmitting, isEditSubmitting) ||
                other.isEditSubmitting == isEditSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    item,
    itemNameController,
    stockController,
    priceController,
    failureOrCreateItemOption,
    failureOrEditItemOption,
    itemGroup,
    selectedCategory,
    isValid,
    isCreateSubmitting,
    isEditSubmitting,
    showErrorMessages,
  );

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemFormStateImplCopyWith<_$ItemFormStateImpl> get copyWith =>
      __$$ItemFormStateImplCopyWithImpl<_$ItemFormStateImpl>(this, _$identity);
}

abstract class _ItemFormState implements ItemFormState {
  const factory _ItemFormState({
    required final Item item,
    required final TextEditingController itemNameController,
    required final TextEditingController stockController,
    required final TextEditingController priceController,
    required final Option<Either<ItemFailure, Item>> failureOrCreateItemOption,
    required final Option<Either<ItemFailure, Item>> failureOrEditItemOption,
    final String? itemGroup,
    final Category? selectedCategory,
    final bool isValid,
    final bool isCreateSubmitting,
    final bool isEditSubmitting,
    final bool showErrorMessages,
  }) = _$ItemFormStateImpl;

  @override
  Item get item;
  @override
  TextEditingController get itemNameController;
  @override
  TextEditingController get stockController;
  @override
  TextEditingController get priceController;
  @override
  Option<Either<ItemFailure, Item>> get failureOrCreateItemOption;
  @override
  Option<Either<ItemFailure, Item>> get failureOrEditItemOption;
  @override
  String? get itemGroup;
  @override
  Category? get selectedCategory;
  @override
  bool get isValid;
  @override
  bool get isCreateSubmitting;
  @override
  bool get isEditSubmitting;
  @override
  bool get showErrorMessages;

  /// Create a copy of ItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemFormStateImplCopyWith<_$ItemFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
