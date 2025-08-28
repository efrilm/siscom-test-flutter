part of '../category.dart';

abstract class ICategoryRepository {
  Future<Either<CategoryFailure, List<Category>>> get();
}
