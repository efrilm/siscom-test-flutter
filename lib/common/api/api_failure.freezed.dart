// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
    ApiFailure value,
    $Res Function(ApiFailure) then,
  ) = _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
    _$ServerErrorImpl value,
    $Res Function(_$ServerErrorImpl) then,
  ) = __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int statusCode, Object errorMessage});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
    _$ServerErrorImpl _value,
    $Res Function(_$ServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statusCode = null, Object? errorMessage = null}) {
    return _then(
      _$ServerErrorImpl(
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int,
        errorMessage: null == errorMessage ? _value.errorMessage : errorMessage,
      ),
    );
  }
}

/// @nodoc

class _$ServerErrorImpl extends _ServerError {
  const _$ServerErrorImpl({
    required this.statusCode,
    required this.errorMessage,
  }) : super._();

  @override
  final int statusCode;
  @override
  final Object errorMessage;

  @override
  String toString() {
    return 'ApiFailure.serverError(statusCode: $statusCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(
              other.errorMessage,
              errorMessage,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    statusCode,
    const DeepCollectionEquality().hash(errorMessage),
  );

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return serverError(statusCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return serverError?.call(statusCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends ApiFailure {
  const factory _ServerError({
    required final int statusCode,
    required final Object errorMessage,
  }) = _$ServerErrorImpl;
  const _ServerError._() : super._();

  int get statusCode;
  Object get errorMessage;

  /// Create a copy of ApiFailure
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
  @useResult
  $Res call({Object errorMessage, StackTrace stackTrace});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
    _$UnexpectedErrorImpl _value,
    $Res Function(_$UnexpectedErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null, Object? stackTrace = null}) {
    return _then(
      _$UnexpectedErrorImpl(
        errorMessage: null == errorMessage ? _value.errorMessage : errorMessage,
        stackTrace: null == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                  as StackTrace,
      ),
    );
  }
}

/// @nodoc

class _$UnexpectedErrorImpl extends _UnexpectedError {
  const _$UnexpectedErrorImpl({
    required this.errorMessage,
    required this.stackTrace,
  }) : super._();

  @override
  final Object errorMessage;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ApiFailure.unexpectedError(errorMessage: $errorMessage, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            const DeepCollectionEquality().equals(
              other.errorMessage,
              errorMessage,
            ) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(errorMessage),
    stackTrace,
  );

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return unexpectedError(errorMessage, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return unexpectedError?.call(errorMessage, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(errorMessage, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends ApiFailure {
  const factory _UnexpectedError({
    required final Object errorMessage,
    required final StackTrace stackTrace,
  }) = _$UnexpectedErrorImpl;
  const _UnexpectedError._() : super._();

  Object get errorMessage;
  StackTrace get stackTrace;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorImplCopyWith<$Res> {
  factory _$$ConnectionErrorImplCopyWith(
    _$ConnectionErrorImpl value,
    $Res Function(_$ConnectionErrorImpl) then,
  ) = __$$ConnectionErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ConnectionErrorImpl>
    implements _$$ConnectionErrorImplCopyWith<$Res> {
  __$$ConnectionErrorImplCopyWithImpl(
    _$ConnectionErrorImpl _value,
    $Res Function(_$ConnectionErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectionErrorImpl extends _ConnectionError {
  const _$ConnectionErrorImpl() : super._();

  @override
  String toString() {
    return 'ApiFailure.connectionError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class _ConnectionError extends ApiFailure {
  const factory _ConnectionError() = _$ConnectionErrorImpl;
  const _ConnectionError._() : super._();
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(
    _$InternalServerErrorImpl value,
    $Res Function(_$InternalServerErrorImpl) then,
  ) = __$$InternalServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(
    _$InternalServerErrorImpl _value,
    $Res Function(_$InternalServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InternalServerErrorImpl extends _InternalServerError {
  const _$InternalServerErrorImpl() : super._();

  @override
  String toString() {
    return 'ApiFailure.internalServerError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError extends ApiFailure {
  const factory _InternalServerError() = _$InternalServerErrorImpl;
  const _InternalServerError._() : super._();
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
    _$UnauthorizedImpl value,
    $Res Function(_$UnauthorizedImpl) then,
  ) = __$$UnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
    _$UnauthorizedImpl _value,
    $Res Function(_$UnauthorizedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$UnauthorizedImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UnauthorizedImpl extends _Unauthorized {
  const _$UnauthorizedImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends ApiFailure {
  const factory _Unauthorized(final String? message) = _$UnauthorizedImpl;
  const _Unauthorized._() : super._();

  String? get message;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
    _$BadRequestImpl value,
    $Res Function(_$BadRequestImpl) then,
  ) = __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
    _$BadRequestImpl _value,
    $Res Function(_$BadRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$BadRequestImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BadRequestImpl extends _BadRequest {
  const _$BadRequestImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest extends ApiFailure {
  const factory _BadRequest(final String? message) = _$BadRequestImpl;
  const _BadRequest._() : super._();

  String? get message;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
    _$NotFoundImpl value,
    $Res Function(_$NotFoundImpl) then,
  ) = __$$NotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
    _$NotFoundImpl _value,
    $Res Function(_$NotFoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$NotFoundImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$NotFoundImpl extends _NotFound {
  const _$NotFoundImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound extends ApiFailure {
  const factory _NotFound(final String? message) = _$NotFoundImpl;
  const _NotFound._() : super._();

  String? get message;

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeoutImplCopyWith<$Res> {
  factory _$$ConnectionTimeoutImplCopyWith(
    _$ConnectionTimeoutImpl value,
    $Res Function(_$ConnectionTimeoutImpl) then,
  ) = __$$ConnectionTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionTimeoutImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ConnectionTimeoutImpl>
    implements _$$ConnectionTimeoutImplCopyWith<$Res> {
  __$$ConnectionTimeoutImplCopyWithImpl(
    _$ConnectionTimeoutImpl _value,
    $Res Function(_$ConnectionTimeoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectionTimeoutImpl extends _ConnectionTimeout {
  const _$ConnectionTimeoutImpl() : super._();

  @override
  String toString() {
    return 'ApiFailure.connectionTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object errorMessage, StackTrace stackTrace)
    unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) notFound,
    required TResult Function() connectionTimeout,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, Object errorMessage)? serverError,
    TResult? Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult? Function()? connectionError,
    TResult? Function()? internalServerError,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? notFound,
    TResult? Function()? connectionTimeout,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object errorMessage, StackTrace stackTrace)?
    unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? notFound,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_ConnectionError value)? connectionError,
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeout extends ApiFailure {
  const factory _ConnectionTimeout() = _$ConnectionTimeoutImpl;
  const _ConnectionTimeout._() : super._();
}
