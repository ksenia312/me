import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/features/landing/landing.dart';
import 'package:me/generated/fonts.gen.dart';
import 'package:me/localization/locales.dart';

import 'common/utils/responsive_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      fallbackLocale: fallbackLocale,
      startLocale: fallbackLocale,
      path: 'assets/translations',
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ResponsiveBuilder.builder,
      title: 'Xenikii',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: _textTheme,
      ),
      home: const Landing(),
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
