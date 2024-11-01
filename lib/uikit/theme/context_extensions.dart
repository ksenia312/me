import 'package:flutter/material.dart';
import 'package:me/uikit/theme/custom_color_scheme.dart';
import 'package:me/uikit/theme/custom_text_theme.dart';

extension ContextExtensions on BuildContext {
  ThemeData get themeData => Theme.of(this);

  CustomColorScheme get customColorScheme => CustomColorScheme.of(this);

  CustomTextTheme get customTextTheme => CustomTextTheme.of(this);

  ColorScheme get colorScheme => themeData.colorScheme;

  TextTheme get textTheme => themeData.textTheme;
}
