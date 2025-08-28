import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../components/button/button.dart';
import '../../../../components/field/field.dart';
import 'widgets/price_field.dart';

@RoutePage()
class ItemFormPage extends StatelessWidget {
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
          AppDropdownSearchField<String>(
            title: "Kategori Barang",
            items: ["Makanan", "Minuman", "Snack"],
            itemAsString: (item) => item,
            selectedItem: 'Makanan',
            onChanged: (value) {},
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
}
