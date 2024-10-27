import 'package:flutter/material.dart';

class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({required this.borderColor});

  final Color borderColor;

  @override
  CustomColorScheme copyWith({
    Color? borderColor,
  }) {
    return CustomColorScheme(
      borderColor: borderColor ?? this.borderColor,
    );
  }

  @override
  ThemeExtension<CustomColorScheme> lerp(
    ThemeExtension<CustomColorScheme>? other,
    double t,
  ) {
    if (other is! CustomColorScheme) {
      return this;
    }
    return CustomColorScheme(
      borderColor: Color.lerp(borderColor, other.borderColor, t) ?? borderColor,
    );
  }

  static CustomColorScheme of(BuildContext context) => Theme.of(context).extension<CustomColorScheme>()!;
}
