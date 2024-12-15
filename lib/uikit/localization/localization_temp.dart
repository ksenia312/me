import 'package:flutter/cupertino.dart';

extension TrExtension on String {
  String tr({BuildContext? context}) => '';

  String plural(num number, {BuildContext? context}) => '';
}

extension LocalizationExtension on BuildContext {
  Locale get locale => Locale('en');

  List<Locale> get supportedLocales => [Locale('en')];

  List<LocalizationsDelegate> get localizationDelegates => [];

  void setLocale(Locale locale) {}
}

class EasyLocalization extends StatelessWidget {
  const EasyLocalization({
    super.key,
    required this.supportedLocales,
    required this.fallbackLocale,
    required this.startLocale,
    required this.path,
    required this.child,
  });

  static Future<void> ensureInitialized() async {}

  final List<Locale> supportedLocales;
  final Locale fallbackLocale;
  final Locale startLocale;
  final String path;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
