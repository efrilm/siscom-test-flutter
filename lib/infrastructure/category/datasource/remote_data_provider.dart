import 'dart:developer';

import 'package:data_channel/data_channel.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api/api_client.dart';
import '../../../common/api/api_failure.dart';
import '../../../common/url/api_path.dart';
import '../../../domain/category/category.dart';
import '../category_dtos.dart';

@injectable
class CategoryRemoteDataProvider {
  final ApiClient _apiClient;
  final String _logName = 'CategoryRemoteDataProvider';

  CategoryRemoteDataProvider(this._apiClient);

  Future<DC<CategoryFailure, List<CategoryDto>>> fetch() async {
    try {
      final response = await _apiClient.get(ApiPath.category);

      if (response.data['data'] == null) {
        return DC.error(CategoryFailure.empty());
      }

      final dto = (response.data['data'] as List)
          .map((item) => CategoryDto.fromJson(item))
          .toList();

      return DC.data(dto);
    } on ApiFailure catch (e, s) {
      log('fetchCategoryError', name: _logName, error: e, stackTrace: s);
      return DC.error(CategoryFailure.serverError(e));
    }
  }
}
