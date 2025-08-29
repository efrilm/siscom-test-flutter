part of 'category_loader_bloc.dart';

@freezed
class CategoryLoaderState with _$CategoryLoaderState {
  const factory CategoryLoaderState({
    required List<Category> categories,
    required Option<CategoryFailure> failureOptionCategory,
    @Default(false) bool isFetching,
  }) = _CategoryLoaderState;

  factory CategoryLoaderState.initial() =>
      CategoryLoaderState(categories: [], failureOptionCategory: none());
}
