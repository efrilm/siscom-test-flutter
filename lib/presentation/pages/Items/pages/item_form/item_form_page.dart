import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../application/category/category_loader/category_loader_bloc.dart';
import '../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../domain/item/item.dart';
import '../../../../../injection.dart';
import '../../../../components/button/button.dart';
import '../../../../components/toast/flushbar.dart';
import '../../../../router/app_router.gr.dart';
import 'widgets/category_field.dart';
import 'widgets/item_group_field.dart';
import 'widgets/name_field.dart';
import 'widgets/price_field.dart';
import 'widgets/stock_field.dart';

@RoutePage()
class ItemFormPage extends StatelessWidget implements AutoRouteWrapper {
  final bool isEdit;
  final Item item;
  const ItemFormPage({super.key, required this.isEdit, required this.item});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ItemFormBloc, ItemFormState>(
          listenWhen: (previous, current) =>
              previous.failureOrCreateItemOption !=
              current.failureOrCreateItemOption,
          listener: (context, state) {
            state.failureOrCreateItemOption.fold(
              () {},
              (either) => either.fold(
                (f) => AppFlushbar.showItemFailureToast(context, f),
                (data) {
                  AppFlushbar.showSuccess(
                    context,
                    'Berhasil menambah barang ${data.itemName}',
                  );
                  Future.delayed(Duration(milliseconds: 600), () {
                    context.router.pushAndPopUntil(
                      ItemRoute(),
                      predicate: (route) => false, // Clear semua
                    );
                  });
                },
              ),
            );
          },
        ),
        BlocListener<ItemFormBloc, ItemFormState>(
          listenWhen: (previous, current) =>
              previous.failureOrEditItemOption !=
              current.failureOrEditItemOption,
          listener: (context, state) {
            state.failureOrEditItemOption.fold(
              () {},
              (either) => either.fold(
                (f) => AppFlushbar.showItemFailureToast(context, f),
                (data) {
                  AppFlushbar.showSuccess(
                    context,
                    'Berhasil mengubah barang ${data.itemName}',
                  );

                  Future.delayed(Duration(milliseconds: 600), () {
                    context.router.pushAndPopUntil(
                      ItemRoute(),
                      predicate: (route) => false, // Clear semua
                    );
                  });
                },
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<ItemFormBloc, ItemFormState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(isEdit ? 'Edit Barang' : 'Tambah Barang'),
              centerTitle: false,
            ),
            body: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  ItemFormNameField(),
                  SizedBox(height: 24),
                  ItemFormCategoryField(),
                  SizedBox(height: 24),
                  ItemFormItemGroup(),
                  SizedBox(height: 24),
                  ItemFormStockField(),
                  SizedBox(height: 24),
                  ItemFormPriceField(),
                  SizedBox(height: 24),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.all(16),
              child: AppElevatedButton(
                onPressed: state.isValid
                    ? () {
                        if (isEdit) {
                          if (!state.isEditSubmitting) {
                            context.read<ItemFormBloc>().add(
                              ItemFormEvent.edited(),
                            );
                          }
                        } else {
                          if (!state.isCreateSubmitting) {
                            context.read<ItemFormBloc>().add(
                              ItemFormEvent.created(),
                            );
                          }
                        }
                      }
                    : null,
                isLoading: isEdit
                    ? state.isEditSubmitting
                    : state.isCreateSubmitting,
                text: isEdit ? 'Simpan Perubahan' : 'Simpan',
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) =>
            getIt<CategoryLoaderBloc>()..add(CategoryLoaderEvent.fetched()),
      ),
      BlocProvider(
        create: (context) =>
            getIt<ItemFormBloc>()..add(ItemFormEvent.loadItem(item)),
      ),
    ],
    child: this,
  );
}
