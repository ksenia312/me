import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:me/domain/localization/localization_repository.dart';
import 'package:me/generated/localization/translations.g.dart';

extension LocalizationExtension on BuildContext {
  LocaleKeys get keys => LocaleKeys.of(this);

  Locale get locale => TranslationProvider.of(this).flutterLocale;

  List<Locale> get supportedLocales => AppLocaleUtils.supportedLocales;

  List<LocalizationsDelegate> get localizationDelegates => GlobalMaterialLocalizations.delegates;

  void setLocale(Locale locale) {
    LocaleSettings.setLocaleRaw(locale.toLanguageTag());
    LocalizationRepository.instance().then((i) => i.setCurrentLocale(locale.toLanguageTag()));
  }
}

class AppLocalization extends StatelessWidget {
  const AppLocalization({super.key, required this.child});

  static Future<void> ensureInitialized() async {
    final repository = await LocalizationRepository.instance();
    final storedLocale = await repository.getCurrentLocale();
    if (storedLocale != null) {
      await LocaleSettings.setLocaleRaw(storedLocale);
    } else {
      await LocaleSettings.useDeviceLocale();
    }
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(child: child);
  }
}
