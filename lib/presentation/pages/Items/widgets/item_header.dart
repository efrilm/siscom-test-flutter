import 'package:flutter/material.dart';

import '../../../../common/theme/theme.dart';

class ItemHeading extends StatelessWidget {
  final bool isEditMode;
  final Function() onEdit;
  final int total;

  const ItemHeading({
    super.key,
    required this.isEditMode,
    required this.onEdit,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$total Data ditampilkan',
            style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
          ),
          if (!isEditMode)
            GestureDetector(
              onTap: onEdit,
              child: Text(
                'Edit Data',
                style: AppStyle.sm.copyWith(
                  color: AppColor.info,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
