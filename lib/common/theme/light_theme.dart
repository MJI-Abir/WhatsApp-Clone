import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/my_colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: MyColors.backgroundLight,
    colorScheme: const ColorScheme.light(background: MyColors.backgroundLight),
    extensions: [
      CustomThemeExtension.lightMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.greenLight,
        foregroundColor: MyColors.backgroundLight,
        splashFactory: InkSparkle.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: MyColors.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    ),
  );
}
