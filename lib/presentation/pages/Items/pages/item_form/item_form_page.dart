import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../application/category/category_loader/category_loader_bloc.dart';
import '../../../../../domain/category/category.dart';
import '../../../../../injection.dart';
import '../../../../components/button/button.dart';
import '../../../../components/field/field.dart';
import 'widgets/price_field.dart';

@RoutePage()
class ItemFormPage extends StatelessWidget implements AutoRouteWrapper {
  final bool isEdit;
  const ItemFormPage({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Barang' : 'Tambah Barang'),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AppTextFormField(title: 'Nama Barang'),
          SizedBox(height: 24),
          BlocBuilder<CategoryLoaderBloc, CategoryLoaderState>(
            builder: (context, category) {
              return AppDropdownSearchField<Category>(
                title: "Kategori Barang",
                items: category.categories,
                itemAsString: (item) => item.name,
                selectedItem: Category.empty(),
                compareFn: (item1, item2) => item1.id == item2.id,
                onChanged: (value) {},
              );
            },
          ),
          SizedBox(height: 24),
          AppDropdownSearchField<String>(
            title: "Kelompok Barang",
            items: ["Makanan", "Minuman", "Snack"],
            itemAsString: (item) => item,
            selectedItem: 'Makanan',
            onChanged: (value) {},
          ),
          SizedBox(height: 24),
          AppTextFormField(title: 'Stok'),
          SizedBox(height: 24),
          ItemFormPriceField(),
          SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: AppElevatedButton(
          onPressed: () {},
          text: isEdit ? 'Simpan Perubahan' : 'Simpan',
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<CategoryLoaderBloc>()..add(CategoryLoaderEvent.fetched()),
    child: this,
  );
}
