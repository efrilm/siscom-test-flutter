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
    String? itemGroup,
    Category? selectedCategory,
    @Default(false) bool isValid,
    @Default(false) bool isCreateSubmitting,
    @Default(false) bool isEditSubmitting,
    @Default(false) bool showErrorMessages,
  }) = _ItemFormState;

  factory ItemFormState.initial() => ItemFormState(
    failureOrCreateItemOption: none(),
    itemNameController: TextEditingController(),
    stockController: TextEditingController(),
    priceController: TextEditingController(),
    item: Item.empty(),
    failureOrEditItemOption: none(),
  );
}
