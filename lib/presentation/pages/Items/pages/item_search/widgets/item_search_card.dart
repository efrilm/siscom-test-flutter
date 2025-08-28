import 'package:flutter/material.dart';

import '../../../../../../common/theme/theme.dart';

class ItemSearchCard extends StatelessWidget {
  const ItemSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                    'Nama Barang',
                    style: AppStyle.md.copyWith(fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kategori',
                    style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kelompok Barang',
                    style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Stok :  35',
                  style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                ),
                SizedBox(height: 8),
                Text(
                  "Rp. 100000",
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
