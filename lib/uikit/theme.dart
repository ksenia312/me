import 'package:flutter/material.dart';
import 'package:me/generated/fonts.gen.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get data {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF02539A),
        tertiary: const Color(0xFF50B9F4),
      ),
      useMaterial3: true,
      textTheme: _textTheme,
    );
  }
}

const _textTheme = TextTheme(
  displayLarge: TextStyle(fontFamily: FontFamily.overpass),
  displayMedium: TextStyle(fontFamily: FontFamily.overpass),
  displaySmall: TextStyle(fontFamily: FontFamily.overpass, fontSize: 40),
  titleLarge: TextStyle(fontFamily: FontFamily.overpass, fontSize: 28),
  titleMedium: TextStyle(fontFamily: FontFamily.overpass),
  titleSmall: TextStyle(fontFamily: FontFamily.overpass, fontSize: 20),
  bodyLarge: TextStyle(fontFamily: FontFamily.overpass),
  bodyMedium: TextStyle(fontFamily: FontFamily.overpass),
  bodySmall: TextStyle(fontFamily: FontFamily.overpass),
  labelLarge: TextStyle(fontFamily: FontFamily.overpass),
  labelMedium: TextStyle(fontFamily: FontFamily.overpass),
  labelSmall: TextStyle(fontFamily: FontFamily.overpass),
);
