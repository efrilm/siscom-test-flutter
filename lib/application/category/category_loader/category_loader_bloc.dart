import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/category/category.dart';

part 'category_loader_event.dart';
part 'category_loader_state.dart';
part 'category_loader_bloc.freezed.dart';

@injectable
class CategoryLoaderBloc
    extends Bloc<CategoryLoaderEvent, CategoryLoaderState> {
  final ICategoryRepository _repository;
  CategoryLoaderBloc(this._repository) : super(CategoryLoaderState.initial()) {
    on<CategoryLoaderEvent>(_onCategoryLoaderEvent);
  }

  Future<void> _onCategoryLoaderEvent(
    CategoryLoaderEvent event,
    Emitter<CategoryLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        emit(state.copyWith(isFetching: true, failureOptionCategory: none()));

        final result = await _repository.get();

        result.fold(
          (f) {
            emit(
              state.copyWith(
                isFetching: false,
                failureOptionCategory: optionOf(f),
              ),
            );
          },
          (categories) {
            emit(
              state.copyWith(
                isFetching: false,
                categories: categories,
                failureOptionCategory: none(),
              ),
            );
          },
        );
      },
    );
  }
}
