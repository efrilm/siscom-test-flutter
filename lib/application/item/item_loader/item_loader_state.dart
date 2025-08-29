part of 'item_loader_bloc.dart';

@freezed
class ItemLoaderState with _$ItemLoaderState {
  const factory ItemLoaderState({
    required List<Item> items,
    required Option<ItemFailure> failureOptionItem,
    String? categoryId,
    String? search,
    @Default(false) bool isFetching,
    @Default(false) bool hasReachedMax,
    @Default(1) int page,
    @Default(0) int totalItems,
  }) = _ItemLoaderState;

  factory ItemLoaderState.initial() =>
      ItemLoaderState(items: [], failureOptionItem: none());
}
