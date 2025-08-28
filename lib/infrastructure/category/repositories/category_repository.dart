import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/category/category.dart';
import '../datasource/remote_data_provider.dart';

@Injectable(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final CategoryRemoteDataProvider _dataProvider;
  final String _logName = 'CategoryRepository';

  CategoryRepository(this._dataProvider);

  @override
  Future<Either<CategoryFailure, List<Category>>> get({
    int page = 1,
    int limit = 20,
    bool isActive = true,
  }) async {
    try {
      final result = await _dataProvider.fetch(
        page: page,
        limit: limit,
        isActive: isActive,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final auth = result.data!.map((e) => e.toDomain()).toList();

      return right(auth);
    } catch (e, s) {
      log('getCategoryError', name: _logName, error: e, stackTrace: s);
      return left(const CategoryFailure.unexpectedError());
    }
  }
}
