import 'package:flutter/material.dart';

enum SupportedLocales {
  en,
  ru,
  es,
  fr,
  de,
  it,
  pt,
  ja,
  ko,
  zh,
  hi,
  tr,
  nl;

  static SupportedLocales? fromString(String value) {
    try {
      return values.firstWhere(
        (element) => element.name == value,
      );
    } catch (e) {
      return null;
    }
  }
}

final fallbackLocale = Locale(SupportedLocales.en.name);
final supportedLocales = [
  ...SupportedLocales.values.map((e) => Locale(e.name)),
];
//
// [
//   Locale('en'), // English (United States)
//   // Locale('es'), // Spanish (Spain)
//   // Locale('fr'), // French (France)
//   // Locale('de'), // German (Germany)
//   // Locale('it'), // Italian (Italy)
//   // Locale('pt'), // Portuguese (Brazil)
//   // Locale('ja'), // Japanese (Japan)
//   // Locale('ko'), // Korean (South Korea)
//   // Locale('zh'), // Chinese (Simplified, China)
//   // Locale('ar'), // Arabic (Saudi Arabia)
//   // Locale('hi'), // Hindi (India)
//   Locale('ru'), // Russian (Russia)
//   // Locale('tr'), // Turkish (Turkey)
//   // Locale('nl'), // Dutch (Netherlands)
//   // Locale('sv'), // Swedish (Sweden)
//   // Locale('pl'), // Polish (Poland)
//   // Locale('vi'), // Vietnamese (Vietnam)
//   // Locale('th'), // Thai (Thailand)
//   // Locale('fi'), // Finnish (Finland)
//   // Locale('da'), // Danish (Denmark)
// ];

extension PrettyView on Locale {
  String toPrettyView() {
    final enumValue = SupportedLocales.fromString(languageCode);
    return switch (enumValue) {
      SupportedLocales.en => 'English',
      SupportedLocales.ru => 'Русский',
      SupportedLocales.fr => 'Français',
      SupportedLocales.tr => 'Türkçe',
      SupportedLocales.de => 'Deutsch',
      SupportedLocales.es => 'Español',
      SupportedLocales.hi => 'हिंदी',
      SupportedLocales.it => 'Italiana',
      SupportedLocales.ja => '日本語',
      SupportedLocales.ko => '한국인',
      SupportedLocales.nl => 'Nederlands',
      SupportedLocales.pt => 'Portugal',
      SupportedLocales.zh => '中国人',
      _ => '',
    };
  }
}
