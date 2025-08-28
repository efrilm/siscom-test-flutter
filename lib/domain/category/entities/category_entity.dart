part of '../category.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Category;

  factory Category.empty() => Category(
    id: '',
    name: '',
    createdAt: DateTime(1970),
    updatedAt: DateTime(1970),
  );
}
