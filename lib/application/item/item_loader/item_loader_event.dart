part of 'item_loader_bloc.dart';

@freezed
class ItemLoaderEvent with _$ItemLoaderEvent {
  const factory ItemLoaderEvent.searchChanged(String search) = _SearchChanged;
  const factory ItemLoaderEvent.fetched({@Default(false) bool isRefresh}) =
      _Fetched;
}
