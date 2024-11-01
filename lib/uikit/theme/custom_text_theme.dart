import 'package:flutter/material.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  const CustomTextTheme({
    required this.titleLargeBolded,
  });

  final TextStyle titleLargeBolded;

  @override
  CustomTextTheme copyWith({TextStyle? titleLargeBolded}) {
    return CustomTextTheme(
      titleLargeBolded: titleLargeBolded ?? this.titleLargeBolded,
    );
  }

  @override
  ThemeExtension<CustomTextTheme> lerp(
    ThemeExtension<CustomTextTheme>? other,
    double t,
  ) {
    if (other is! CustomTextTheme) {
      return this;
    }
    return CustomTextTheme(
      titleLargeBolded: TextStyle.lerp(titleLargeBolded, other.titleLargeBolded, t) ?? titleLargeBolded,
    );
  }

  static CustomTextTheme of(BuildContext context) => Theme.of(context).extension<CustomTextTheme>()!;
}
