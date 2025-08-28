import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';
import '../../../domain/item/item.dart';

class AppFlushbar {
  static void showSuccess(BuildContext context, String message) {
    Flushbar(
      messageText: Text(
        message,
        style: AppStyle.lg.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Icon(Icons.check_circle, color: Colors.white),
      duration: const Duration(seconds: 2),
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: AppColor.success,
      borderRadius: BorderRadius.circular(12),
      margin: const EdgeInsets.all(12),
    ).show(context);
  }

  static void showError(BuildContext context, String message) {
    Flushbar(
      messageText: Text(
        message,
        style: AppStyle.lg.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      icon: const Icon(Icons.error, color: Colors.white),
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: AppColor.danger,
      borderRadius: BorderRadius.circular(12),
      margin: const EdgeInsets.all(12),
    ).show(context);
  }

  static void showItemFailureToast(BuildContext context, ItemFailure failure) =>
      showError(
        context,
        failure.map(
          empty: (value) => 'Tidak ada data',
          serverError: (value) => value.failure.toStringFormatted(context),
          dynamicErrorMessage: (value) => value.erroMessage,
          unexpectedError: (value) => 'Terjadi kesalahan',
        ),
      );
}
