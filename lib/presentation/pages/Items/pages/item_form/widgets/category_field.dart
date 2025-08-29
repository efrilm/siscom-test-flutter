import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/category/category_loader/category_loader_bloc.dart';
import '../../../../../../application/item/item_form/item_form_bloc.dart';
import '../../../../../../domain/category/category.dart';
import '../../../../../components/field/field.dart';

class ItemFormCategoryField extends StatelessWidget {
  const ItemFormCategoryField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryLoaderBloc, CategoryLoaderState>(
      builder: (context, category) {
        return AppDropdownSearchField<Category>(
          title: "Kategori Barang",
          items: category.categories,
          itemAsString: (item) => item.name,
          selectedItem: context.read<ItemFormBloc>().state.selectedCategory,
          compareFn: (item1, item2) => item1.id == item2.id,
          onChanged: (value) {
            context.read<ItemFormBloc>().add(
              ItemFormEvent.categoryChanged(value!),
            );
            context.read<ItemFormBloc>().add(ItemFormEvent.isValidChanged());
          },
          validator: (value) {
            if (value == null ||
                context.read<ItemFormBloc>().state.selectedCategory == null) {
              return 'Kategori barang harus diisi';
            }
            return null;
          },
        );
      },
    );
  }
}
