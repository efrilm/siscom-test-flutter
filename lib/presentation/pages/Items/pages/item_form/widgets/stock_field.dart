import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../components/field/field.dart';

class ItemFormStockField extends StatelessWidget {
  const ItemFormStockField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: 'Stok',
      controller: context.read<ItemFormBloc>().state.stockController,
      onChanged: (value) =>
          context.read<ItemFormBloc>().add(ItemFormEvent.isValidChanged()),
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            context.read<ItemFormBloc>().state.stockController.text == '') {
          return 'Stok barang harus diisi';
        }
        return null;
      },
    );
  }
}
