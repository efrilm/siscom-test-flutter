import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';
import '../button/button.dart';

class EmptyCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final VoidCallback? onPressed;
  final String? buttonText;

  const EmptyCard({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.onPressed,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColor.bgSecondary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(icon!, size: 48, color: AppColor.primary),
            ),
            const SizedBox(height: 20),
          ],
          Text(
            title,
            style: AppStyle.xl.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColor.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 12),
            Text(
              subtitle!,
              style: AppStyle.lg.copyWith(
                color: AppColor.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ],
          if (buttonText != null && onPressed != null) ...[
            const SizedBox(height: 28),
            AppElevatedButton(onPressed: onPressed, text: buttonText!),
          ],
        ],
      ),
    );
  }
}
