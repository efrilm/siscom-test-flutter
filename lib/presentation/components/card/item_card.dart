import 'package:flutter/material.dart';
import '../../../common/theme/theme.dart';
import '../bottom_sheet/detail_bottom_sheet.dart';

class ItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final bool isEditMode;
  final bool isSelected;
  final ValueChanged<bool?>? onSelectionChanged;
  final VoidCallback? onLongPress;

  const ItemCard({
    super.key,
    required this.item,
    this.isEditMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: isEditMode
          ? () => onSelectionChanged?.call(!isSelected)
          : () => ItemDetailBottomSheet.show(context, item),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.borderSecondary)),
        ),
        child: Row(
          children: [
            if (isEditMode)
              Checkbox(
                value: isSelected,
                onChanged: onSelectionChanged,
                activeColor: AppColor.primary,
              ),
            if (isEditMode) SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'] ?? 'Nama Barang',
                    style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Stok : ${item['stock'] ?? 35}',
                    style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                  ),
                ],
              ),
            ),
            Text(
              "Rp. ${item['price'] ?? 100000}",
              style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
