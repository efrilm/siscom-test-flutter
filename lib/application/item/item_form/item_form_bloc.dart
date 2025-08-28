import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../common/formatter/rupiah_formatter.dart';
import '../../../domain/category/category.dart';
import '../../../domain/item/item.dart';

part 'item_form_event.dart';
part 'item_form_state.dart';
part 'item_form_bloc.freezed.dart';

@injectable
class ItemFormBloc extends Bloc<ItemFormEvent, ItemFormState> {
  final IItemRepository _repository;
  ItemFormBloc(this._repository) : super(ItemFormState.initial()) {
    on<ItemFormEvent>(_onItemFormEvent);
  }

  Future<void> _onItemFormEvent(
    ItemFormEvent event,
    Emitter<ItemFormState> emit,
  ) {
    return event.map(
      loadItem: (e) async {
        if (e.item.id != "") {
          emit(
            state.copyWith(
              item: e.item,
              itemNameController: TextEditingController(text: e.item.itemName),
              stockController: TextEditingController(
                text: e.item.stock.toString(),
              ),
              priceController: TextEditingController(
                text: RupiahInputFormatter.formatRupiah(e.item.price),
              ),
              itemGroup: e.item.itemGroup,
              selectedCategory: e.item.category,
              isValid: true,
            ),
          );
        }
      },
      categoryChanged: (e) async {
        emit(state.copyWith(selectedCategory: e.category));
      },
      itemGroupChanged: (e) async {
        emit(state.copyWith(itemGroup: e.itemGroup));
      },
      isValidChanged: (e) async {
        final itemName = state.itemNameController.text.isNotEmpty;
        final category = state.selectedCategory != null;
        final stock = state.stockController.text.isNotEmpty;
        final itemGroup = state.itemGroup != null;
        final price = state.priceController.text.isNotEmpty;
        log(state.isValid.toString());
        log(
          'itemName: $itemName, category: $category, stock: $stock, itemGroup: $itemGroup, price: $price',
        );

        if (itemName && category && stock && itemGroup && price) {
          emit(state.copyWith(isValid: true));
        }
      },
      created: (e) async {
        Either<ItemFailure, Item>? failureOrItem;

        emit(
          state.copyWith(
            isCreateSubmitting: true,
            failureOrCreateItemOption: none(),
            showErrorMessages: false,
          ),
        );

        if (state.isValid) {
          failureOrItem = await _repository.store(
            itemName: state.itemNameController.text,
            categoryId: state.selectedCategory?.id ?? "",
            stock: state.stockController.text,
            itemGroup: state.itemGroup ?? "",
            price: RupiahInputFormatter.getUnformattedValue(
              state.priceController.text,
            ).toString(),
          );

          emit(
            state.copyWith(
              isCreateSubmitting: false,
              failureOrCreateItemOption: optionOf(failureOrItem),
            ),
          );

          emit(
            state.copyWith(showErrorMessages: true, isCreateSubmitting: false),
          );
        }
      },
      edited: (e) async {
        Either<ItemFailure, Item>? failureOrItem;

        emit(
          state.copyWith(
            isEditSubmitting: true,
            failureOrEditItemOption: none(),
            showErrorMessages: false,
          ),
        );

        if (state.isValid) {
          failureOrItem = await _repository.edit(
            id: state.item.id,
            itemName: state.itemNameController.text,
            categoryId: state.selectedCategory?.id ?? "",
            stock: state.stockController.text,
            itemGroup: state.itemGroup ?? "",
            price: RupiahInputFormatter.getUnformattedValue(
              state.priceController.text,
            ).toString(),
          );

          emit(
            state.copyWith(
              isEditSubmitting: false,
              failureOrEditItemOption: optionOf(failureOrItem),
            ),
          );

          emit(
            state.copyWith(showErrorMessages: true, isEditSubmitting: false),
          );
        }
      },
      deleted: (e) async {
        Either<ItemFailure, Unit>? failureOrItem;

        emit(
          state.copyWith(
            isDeleteSubmitting: true,
            failureOrDeleteItemOption: none(),
          ),
        );

        if (e.id != "") {
          failureOrItem = await _repository.delete(id: e.id);

          emit(
            state.copyWith(
              isDeleteSubmitting: false,
              failureOrDeleteItemOption: optionOf(failureOrItem),
            ),
          );

          emit(state.copyWith(isDeleteSubmitting: false));
        }
      },
    );
  }
}
