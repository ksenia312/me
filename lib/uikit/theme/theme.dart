import 'package:flutter/material.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/custom_color_scheme.dart';
import 'package:me/uikit/theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData dataOf(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        surface: AppColors.darkBlue,
        error: AppColors.red,
        secondary: AppColors.blue,
        primary: AppColors.white,
        onSurface: AppColors.white,
        onError: AppColors.white,
        onPrimary: AppColors.darkBlue,
        onSecondary: AppColors.white,
      ),
      splashColor: AppColors.dimBlue,
      splashFactory: NoSplash.splashFactory,
      highlightColor: AppColors.dimBlue,
      focusColor: AppColors.dimBlue,
      hoverColor: AppColors.dimBlue,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mediumBlue.withOpacity(0.8),
        foregroundColor: AppColors.white,
        elevation: 0,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thickness: WidgetStatePropertyAll(2),
        thumbColor: WidgetStatePropertyAll(AppColors.lightBlue),
      ),
      useMaterial3: true,
      textTheme: AppTextTheme.current(context),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightBlue,
          minimumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
      ),
      extensions: [
        CustomColorScheme(
          borderColor: AppColors.lightBlue,
          gradientExtraLightColor: AppColors.extraBlue,
          gradientLightColor: AppColors.veryDarkBlue,
          gradientDarkColor: AppColors.extraDarkBlue,
        ),
        AppTextTheme.currentCustom(context),
      ],
    );
  }
}
