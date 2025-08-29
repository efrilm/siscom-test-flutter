import 'package:flutter/material.dart';

import '../../../common/theme/theme.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(color: AppColor.primary),
            ),
          ],
        ),
      ),
    );
  }
}
