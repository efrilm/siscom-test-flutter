part of 'item_form_bloc.dart';

@freezed
class ItemFormState with _$ItemFormState {
  const factory ItemFormState({
    required Item item,
    required TextEditingController itemNameController,
    required TextEditingController stockController,
    required TextEditingController priceController,
    required Option<Either<ItemFailure, Item>> failureOrCreateItemOption,
    required Option<Either<ItemFailure, Item>> failureOrEditItemOption,
    required Option<Either<ItemFailure, Unit>> failureOrDeleteItemOption,
    required Option<Either<ItemFailure, Unit>> failureOrBulkDeleteItemOption,
    required Set<String> selectedIds,
    String? itemGroup,
    Category? selectedCategory,
    @Default(false) bool isValid,
    @Default(false) bool isCreateSubmitting,
    @Default(false) bool isEditSubmitting,
    @Default(false) bool isDeleteSubmitting,
    @Default(false) bool isBulkDeleteSubmitting,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isBulkDelete,
  }) = _ItemFormState;

  factory ItemFormState.initial() => ItemFormState(
    failureOrCreateItemOption: none(),
    itemNameController: TextEditingController(),
    stockController: TextEditingController(),
    priceController: TextEditingController(),
    item: Item.empty(),
    failureOrEditItemOption: none(),
    failureOrDeleteItemOption: none(),
    failureOrBulkDeleteItemOption: none(),
    selectedIds: {},
  );
}
