import 'package:flutter/material.dart';

import '../../presentation/components/assets/fonts.gen.dart';

part 'app_color.dart';
part 'app_style.dart';
part 'app_value.dart';

class ThemeApp {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.white,
    primaryColor: AppColor.primary,
    fontFamily: FontFamily.inter,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.white,
      elevation: 2,
      shadowColor: AppColor.black.withOpacity(0.2),
      surfaceTintColor: AppColor.white,
      titleTextStyle: AppStyle.xl.copyWith(fontWeight: FontWeight.w500),
      centerTitle: true,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(width: 1, color: AppColor.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
