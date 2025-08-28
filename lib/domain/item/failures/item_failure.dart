part of '../item.dart';

@freezed
sealed class ItemFailure with _$ItemFailure {
  const factory ItemFailure.serverError(ApiFailure failure) = _ServerError;
  const factory ItemFailure.unexpectedError() = _UnexpectedError;
  const factory ItemFailure.empty() = _Empty;
  const factory ItemFailure.dynamicErrorMessage(String erroMessage) =
      _DynamicErrorMessage;
}
