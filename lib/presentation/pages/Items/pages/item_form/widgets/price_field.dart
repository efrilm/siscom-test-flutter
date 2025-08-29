import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../../common/formatter/rupiah_formatter.dart';
import '../../../../../components/field/field.dart';

class ItemFormPriceField extends StatelessWidget {
  const ItemFormPriceField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: 'Harga',
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        RupiahInputFormatter(),
      ],
      controller: context.read<ItemFormBloc>().state.priceController,
      onChanged: (value) =>
          context.read<ItemFormBloc>().add(ItemFormEvent.isValidChanged()),
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            context.read<ItemFormBloc>().state.priceController.text == '') {
          return 'Harga barang harus diisi';
        }

        if (value == '0' ||
            context.read<ItemFormBloc>().state.priceController.text == '0') {
          return 'Harga barang tidak boleh 0';
        }
        return null;
      },
    );
  }
}
