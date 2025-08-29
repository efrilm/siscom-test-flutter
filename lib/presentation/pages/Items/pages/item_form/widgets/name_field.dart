import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../components/field/field.dart';

class ItemFormNameField extends StatefulWidget {
  const ItemFormNameField({super.key});

  @override
  State<ItemFormNameField> createState() => _ItemFormNameFieldState();
}

class _ItemFormNameFieldState extends State<ItemFormNameField> {
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: 'Nama Barang',
      controller: context.read<ItemFormBloc>().state.itemNameController,
      onChanged: (value) =>
          context.read<ItemFormBloc>().add(ItemFormEvent.isValidChanged()),
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            context.read<ItemFormBloc>().state.itemNameController.text == '') {
          return 'Nama barang harus diisi';
        }
        return null;
      },
    );
  }
}
