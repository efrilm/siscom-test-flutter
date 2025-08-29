import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/item/item.dart';

part 'item_loader_event.dart';
part 'item_loader_state.dart';
part 'item_loader_bloc.freezed.dart';

@injectable
class ItemLoaderBloc extends Bloc<ItemLoaderEvent, ItemLoaderState> {
  final IItemRepository _repository;
  ItemLoaderBloc(this._repository) : super(ItemLoaderState.initial()) {
    on<ItemLoaderEvent>(_onItemLoaderEvent);
  }

  Future<void> _onItemLoaderEvent(
    ItemLoaderEvent event,
    Emitter<ItemLoaderState> emit,
  ) {
    return event.map(
      searchChanged: (e) async {
        emit(state.copyWith(search: e.search));
      },
      fetched: (e) async {
        var newState = state;

        if (e.isRefresh) {
          newState = state.copyWith(isFetching: true);

          emit(newState);
        }

        newState = await _mapFetchedToState(state, isRefresh: e.isRefresh);

        emit(newState);
      },
    );
  }

  Future<ItemLoaderState> _mapFetchedToState(
    ItemLoaderState state, {
    bool isRefresh = false,
  }) async {
    state = state.copyWith(isFetching: false);

    if (state.hasReachedMax && state.items.isNotEmpty && !isRefresh) {
      return state;
    }

    if (isRefresh) {
      state = state.copyWith(
        page: 1,
        failureOptionItem: none(),
        hasReachedMax: false,
        items: [],
      );
    }

    final failureOrItem = await _repository.get(
      page: state.page,
      search: state.search,
    );

    state = failureOrItem.fold(
      (f) {
        if (state.items.isNotEmpty) {
          return state.copyWith(hasReachedMax: true);
        }
        return state.copyWith(failureOptionItem: optionOf(f));
      },
      (item) {
        return state.copyWith(
          items: List.from(state.items)..addAll(item.data),
          failureOptionItem: none(),
          totalItems: item.total,
          page: state.page + 1,
          hasReachedMax: item.data.length < 10,
        );
      },
    );

    return state;
  }
}
