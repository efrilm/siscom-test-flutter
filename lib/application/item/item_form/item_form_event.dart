part of 'item_form_bloc.dart';

@freezed
class ItemFormEvent with _$ItemFormEvent {
  const factory ItemFormEvent.loadItem(Item item) = _LoadItem;
  const factory ItemFormEvent.isValidChanged() = _IsValidChanged;
  const factory ItemFormEvent.categoryChanged(Category category) =
      _CategoryChanged;
  const factory ItemFormEvent.itemGroupChanged(String itemGroup) =
      _ItemGroupChanged;
  const factory ItemFormEvent.created() = _Created;
  const factory ItemFormEvent.edited() = _Edited;
}
