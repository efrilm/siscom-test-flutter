import 'package:flutter/material.dart';

import '../../../../../../common/extension/extension.dart';
import '../../../../../../common/theme/theme.dart';
import '../../../../../../domain/item/item.dart';
import '../../../../../components/bottom_sheet/detail_bottom_sheet.dart';

class ItemSearchCard extends StatelessWidget {
  final Item item;
  const ItemSearchCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ItemDetailBottomSheet.show(context, item),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.borderSecondary)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.itemName,
                    style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Text(
                    item.category.name,
                    style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                  ),
                  SizedBox(height: 4),
                  Text(
                    item.itemGroup,
                    style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Stok :  ${item.stock}',
                  style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                ),
                SizedBox(height: 8),
                Text(
                  item.price.currencyFormatRp,
                  style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
