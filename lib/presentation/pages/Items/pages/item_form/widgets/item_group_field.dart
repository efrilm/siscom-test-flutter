import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../components/field/field.dart';

class ItemFormItemGroup extends StatelessWidget {
  const ItemFormItemGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDropdownSearchField<String>(
      title: "Kelompok Barang",
      items: [
        "Hobi",
        "Mainan",
        "Kesehatan",
        "Elektronik",
        "Kecantikan",
        "Perawatan Tubuh",
        "Peralatan Rumah",
        "Otomotif",
        "Gaming",
      ],
      itemAsString: (item) => item,
      selectedItem: context.read<ItemFormBloc>().state.itemGroup,
      onChanged: (value) {
        context.read<ItemFormBloc>().add(
          ItemFormEvent.itemGroupChanged(value!),
        );
        context.read<ItemFormBloc>().add(ItemFormEvent.isValidChanged());
      },
      validator: (value) {
        if (value == null ||
            context.read<ItemFormBloc>().state.itemGroup == null) {
          return 'Kelompok barang harus diisi';
        }
        return null;
      },
    );
  }
}
