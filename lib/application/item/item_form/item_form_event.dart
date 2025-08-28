part of 'item_form_bloc.dart';

@freezed
class ItemFormEvent with _$ItemFormEvent {
  const factory ItemFormEvent.loadItem(Item item) = _LoadItem;
  const factory ItemFormEvent.isValidChanged() = _IsValidChanged;
  const factory ItemFormEvent.categoryChanged(Category category) =
      _CategoryChanged;
  const factory ItemFormEvent.itemGroupChanged(String itemGroup) =
      _ItemGroupChanged;
  const factory ItemFormEvent.toggleBulkDelete() = _ToggleBulkDelete;
  const factory ItemFormEvent.toggleItemSelection(String itemId) =
      _ToggleItemSelection;
  const factory ItemFormEvent.selectAllItems(List<Item> items) =
      _SelectAllItems;
  const factory ItemFormEvent.created() = _Created;
  const factory ItemFormEvent.edited() = _Edited;
  const factory ItemFormEvent.deleted(String id) = _Deleted;
  const factory ItemFormEvent.bulkDeleted() = _BulkDeleted;
}
