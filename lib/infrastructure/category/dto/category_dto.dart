part of '../category_dtos.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  /// Mapper ke domain
  Category toDomain() {
    return Category(
      id: id ?? '',
      name: name ?? '',
      createdAt: createdAt != null
          ? DateTime.tryParse(createdAt!) ?? DateTime(1970)
          : DateTime(1970),
      updatedAt: updatedAt != null
          ? DateTime.tryParse(updatedAt!) ?? DateTime(1970)
          : DateTime(1970),
    );
  }
}
