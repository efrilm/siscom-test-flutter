part of 'category_loader_bloc.dart';

@freezed
class CategoryLoaderEvent with _$CategoryLoaderEvent {
  const factory CategoryLoaderEvent.fetched() = _Fetched;
}
