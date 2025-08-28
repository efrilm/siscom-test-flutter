part of '../category.dart';

@freezed
sealed class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.serverError(ApiFailure failure) = _ServerError;
  const factory CategoryFailure.unexpectedError() = _UnexpectedError;
  const factory CategoryFailure.empty() = _Empty;
  const factory CategoryFailure.dynamicErrorMessage(String erroMessage) =
      _DynamicErrorMessage;
}
