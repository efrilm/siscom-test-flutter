import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';

class DeleteConfirmationDialog {
  static Future<bool?> show({
    required BuildContext context,
    String? title,
    String? message,
    String? itemName,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    String confirmText = "Hapus",
    String cancelText = "Batal",
    bool isDangerous = true,
  }) {
    // Generate pesan default jika tidak disediakan
    final defaultMessage = itemName != null
        ? "Apakah Anda yakin ingin menghapus \"$itemName\"? Tindakan ini tidak dapat dibatalkan."
        : "Apakah Anda yakin ingin menghapus barang ini? Tindakan ini tidak dapat dibatalkan.";

    return showDialog<bool>(
      context: context,
      barrierDismissible: false,

      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: isDangerous ? Colors.red[600] : Colors.orange[600],
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                title ?? "Hapus Barang",
                style: AppStyle.lg.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          content: Text(
            message ?? defaultMessage,
            style: AppStyle.md.copyWith(height: 1.5),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.router.maybePop(false);
                onCancel?.call();
              },
              style: TextButton.styleFrom(
                foregroundColor: AppColor.textSecondary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
              child: Text(cancelText),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.maybePop(true);
                onConfirm?.call();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDangerous
                    ? AppColor.danger
                    : AppColor.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(confirmText),
            ),
          ],
        );
      },
    );
  }
}
