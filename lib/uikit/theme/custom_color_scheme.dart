import 'package:flutter/material.dart';

class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({
    required this.borderColor,
    required this.gradientExtraLightColor,
    required this.gradientLightColor,
    required this.gradientDarkColor,
    required this.videoBackgroundColor,
    required this.bottomBarBackgroundColor,
    required this.markdownBackgroundColor,
    required this.summaryBackgroundColor,
  });

  final Color borderColor;
  final Color gradientExtraLightColor;
  final Color gradientLightColor;
  final Color gradientDarkColor;
  final Color videoBackgroundColor;
  final Color bottomBarBackgroundColor;
  final Color markdownBackgroundColor;
  final Color summaryBackgroundColor;

  @override
  CustomColorScheme copyWith({
    Color? borderColor,
    Color? gradientExtraLightColor,
    Color? gradientLightColor,
    Color? gradientDarkColor,
    Color? videoBackgroundColor,
    Color? bottomBarBackgroundColor,
    Color? markdownBackgroundColor,
    Color? summaryBackgroundColor,
  }) {
    return CustomColorScheme(
      borderColor: borderColor ?? this.borderColor,
      gradientExtraLightColor: gradientExtraLightColor ?? this.gradientExtraLightColor,
      gradientLightColor: gradientLightColor ?? this.gradientLightColor,
      gradientDarkColor: gradientDarkColor ?? this.gradientDarkColor,
      videoBackgroundColor: videoBackgroundColor ?? this.videoBackgroundColor,
      bottomBarBackgroundColor: bottomBarBackgroundColor ?? this.bottomBarBackgroundColor,
      markdownBackgroundColor: markdownBackgroundColor ?? this.markdownBackgroundColor,
      summaryBackgroundColor: summaryBackgroundColor ?? this.summaryBackgroundColor,
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
      videoBackgroundColor: Color.lerp(videoBackgroundColor, other.videoBackgroundColor, t) ?? videoBackgroundColor,
      bottomBarBackgroundColor:
          Color.lerp(bottomBarBackgroundColor, other.bottomBarBackgroundColor, t) ?? bottomBarBackgroundColor,
      markdownBackgroundColor:
          Color.lerp(markdownBackgroundColor, other.markdownBackgroundColor, t) ?? markdownBackgroundColor,
      summaryBackgroundColor:
          Color.lerp(summaryBackgroundColor, other.summaryBackgroundColor, t) ?? summaryBackgroundColor,
    );
  }

  static CustomColorScheme of(BuildContext context) => Theme.of(context).extension<CustomColorScheme>()!;
}
