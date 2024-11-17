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
