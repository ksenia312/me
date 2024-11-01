import 'package:flutter/material.dart';

class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({
    required this.borderColor,
    required this.gradientExtraLightColor,
    required this.gradientLightColor,
    required this.gradientDarkColor,
  });

  final Color borderColor;
  final Color gradientExtraLightColor;
  final Color gradientLightColor;
  final Color gradientDarkColor;

  @override
  CustomColorScheme copyWith({
    Color? borderColor,
    Color? gradientExtraLightColor,
    Color? gradientLightColor,
    Color? gradientDarkColor,
  }) {
    return CustomColorScheme(
      borderColor: borderColor ?? this.borderColor,
      gradientExtraLightColor: gradientExtraLightColor ?? this.gradientExtraLightColor,
      gradientLightColor: gradientLightColor ?? this.gradientLightColor,
      gradientDarkColor: gradientDarkColor ?? this.gradientDarkColor,
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
      gradientExtraLightColor:
          Color.lerp(gradientExtraLightColor, other.gradientExtraLightColor, t) ?? gradientExtraLightColor,
      gradientLightColor: Color.lerp(gradientLightColor, other.gradientLightColor, t) ?? gradientLightColor,
      gradientDarkColor: Color.lerp(gradientDarkColor, other.gradientDarkColor, t) ?? gradientDarkColor,
    );
  }

  static CustomColorScheme of(BuildContext context) => Theme.of(context).extension<CustomColorScheme>()!;
}
