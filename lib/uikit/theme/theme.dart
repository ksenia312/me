import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/custom_color_scheme.dart';
import 'package:me/uikit/theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData dataOf(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        surface: AppColors.twilightBlue,
        error: AppColors.red,
        secondary: AppColors.cosmicBlue,
        primary: AppColors.white,
        onSurface: AppColors.white,
        onError: AppColors.white,
        onPrimary: AppColors.twilightBlue,
        onSecondary: AppColors.white,
      ),
      splashColor: AppColors.shadowGreyBlue,
      splashFactory: NoSplash.splashFactory,
      highlightColor: AppColors.shadowGreyBlue,
      focusColor: AppColors.shadowGreyBlue,
      hoverColor: AppColors.shadowGreyBlue,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.duskBlue.withOpacity(0.8),
        foregroundColor: AppColors.white,
        elevation: 0,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thickness: WidgetStatePropertyAll(2),
        thumbColor: WidgetStatePropertyAll(AppColors.sapphireBlue),
      ),
      useMaterial3: true,
      textTheme: AppTextTheme.current(context),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.sapphireBlue,
          minimumSize: Responsive.get(context, def: () => const Size(150, 50), s: () => const Size(150, 40)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.sapphireBlue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10000)),
        splashColor: AppColors.icyBlue,
        focusColor: AppColors.icyBlue,
        hoverColor: AppColors.icyBlue,
      ),
      extensions: [
        CustomColorScheme(
          borderColor: AppColors.sapphireBlue,
          gradientExtraLightColor: AppColors.midnightStorm,
          gradientLightColor: AppColors.abyssBlue,
          gradientDarkColor: AppColors.midnightBlue,
          videoBackgroundColor: AppColors.shadowBlue,
          bottomBarBackgroundColor: AppColors.deepSpace,
          markdownBackgroundColor: AppColors.starlightBlue,
          summaryBackgroundColor: AppColors.starlightBlue,
        ),
        AppTextTheme.currentCustom(context),
      ],
    );
  }
}
