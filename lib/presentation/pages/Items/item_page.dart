import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../common/theme/theme.dart';
import '../../components/button/button.dart';
import 'widgets/item_card.dart';
import '../../components/modal/delete_dialog.dart';
import '../../router/app_router.gr.dart';
import 'widgets/item_header.dart';

@RoutePage()
class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isEditMode = false;
  Set<int> selectedItems = {};

  // Sample data - replace with your actual data
  final List<Map<String, dynamic>> items = [
    {'id': 1, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 2, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 3, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
    {'id': 4, 'name': 'Nama Barang', 'stock': 35, 'price': 100000},
  ];

  void toggleEditMode() {
    setState(() {
      isEditMode = !isEditMode;
      if (!isEditMode) {
        selectedItems.clear();
      }
    });
  }

  void toggleItemSelection(int itemId) {
    setState(() {
      if (selectedItems.contains(itemId)) {
        selectedItems.remove(itemId);
      } else {
        selectedItems.add(itemId);
      }
    });
  }

  void selectAllItems() {
    setState(() {
      if (selectedItems.length == items.length) {
        selectedItems.clear();
      } else {
        selectedItems = items.map((item) => item['id'] as int).toSet();
      }
    });
  }

  void deleteSelectedItems() {
    DeleteConfirmationDialog.show(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditMode ? 'Pilih Barang' : 'List Stock Barang'),
        leading: isEditMode
            ? IconButton(
                onPressed: toggleEditMode,
                icon: const Icon(Icons.close),
              )
            : null,
        actions: [
          if (!isEditMode)
            IconButton(
              onPressed: () => context.router.push(ItemSearchRoute()),
              icon: const Icon(Icons.search),
            ),
          if (isEditMode && selectedItems.isNotEmpty)
            TextButton(
              onPressed: selectAllItems,
              child: Text(
                selectedItems.length == items.length
                    ? 'Batal Pilih Semua'
                    : 'Pilih Semua',
                style: TextStyle(color: AppColor.primary),
              ),
            ),
        ],
      ),
      floatingActionButton: !isEditMode
          ? FloatingActionButton.extended(
              onPressed: () =>
                  context.router.push(ItemFormRoute(isEdit: false)),
              backgroundColor: AppColor.primary,
              foregroundColor: AppColor.white,
              elevation: 8,
              icon: Icon(Icons.add, size: 32),
              label: Text(
                'Barang',
                style: AppStyle.lg.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            )
          : null,
      body: Column(
        children: [
          ItemHeading(isEditMode: isEditMode, onEdit: () => toggleEditMode()),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  isEditMode: isEditMode,
                  isSelected: selectedItems.contains(item['id']),
                  onSelectionChanged: (selected) {
                    toggleItemSelection(item['id']);
                  },
                  onLongPress: () {
                    if (!isEditMode) {
                      toggleEditMode();
                      toggleItemSelection(item['id']);
                    }
                  },
                );
              },
            ),
          ),
          if (!isEditMode) buildPullToRefreshInfo(),
          if (isEditMode) buildBottomActionBar(),
        ],
      ),
    );
  }

  Widget buildBottomActionBar() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColor.white),
      child: SafeArea(
        child: Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: selectAllItems,
                child: Row(
                  children: [
                    Checkbox(
                      value:
                          selectedItems.length == items.length &&
                          items.isNotEmpty,
                      tristate: true,
                      onChanged: (value) => selectAllItems(),
                      activeColor: AppColor.primary,
                    ),
                    Text('Pilih Semua', style: AppStyle.md),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AppOutlineButton(
                text: 'Hapus Barang',
                onPressed: selectedItems.isEmpty ? null : deleteSelectedItems,
                borderColor: selectedItems.isEmpty
                    ? AppColor.borderSecondary
                    : AppColor.danger,
                textColor: selectedItems.isEmpty
                    ? AppColor.borderSecondary
                    : AppColor.danger,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPullToRefreshInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_upward, size: 16, color: AppColor.textSecondary),
          SizedBox(width: 4),
          Text(
            'Tarik untuk memuat data lainnya',
            style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
          ),
        ],
      ),
    );
  }
}
