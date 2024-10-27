import 'package:flutter/material.dart';
import 'package:me/generated/fonts.gen.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/app_colors.dart';

class AppTextTheme {
  static TextTheme current(BuildContext context) => Responsive.get(
        context,
        def: () => _defaultTextTheme,
        s: () => _smallTextTheme,
      );

  static final _defaultTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 50,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 44,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 36,
      height: 1.2,
    ),
    headlineSmall: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.w400,
      fontSize: 32,
      height: 1.2,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.w400,
      fontSize: 28,
      height: 1.2,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 24,
      height: 1.2,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 1.2,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 18,
      height: 1.2,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 16,
      height: 1.2,
    ),
    bodySmall: TextStyle(
      shadows: [_fontShadowSmall],
      fontFamily: FontFamily.inter,
      fontSize: 14,
      height: 1.2,
    ),
  );

  static final _smallTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 38,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 32,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.bold,
      fontSize: 24,
      height: 1.2,
    ),
    headlineSmall: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: 1.2,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.inter,
      shadows: [_fontShadow],
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 14,
      height: 1.2,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 1.2,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 14,
      height: 1.2,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 12,
      height: 1.2,
    ),
    bodySmall: TextStyle(
      shadows: [_fontShadowSmall],
      fontFamily: FontFamily.inter,
      fontSize: 12,
      height: 1.2,
    ),
  );

  static final _fontShadow = Shadow(
    color: AppColors.white.withOpacity(0.5),
    blurRadius: 10,
  );
  static final _fontShadowSmall = Shadow(
    color: AppColors.white.withOpacity(0.5),
    blurRadius: 4,
  );
}
