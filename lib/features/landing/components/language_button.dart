import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/localization/locales.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  Iterable<Locale> get sortedLocales => supportedLocales
    ..sort(
      (a, b) => b.languageCode.compareTo(a.languageCode),
    );

  @override
  Widget build(BuildContext context) {
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    final primary = Theme.of(context).colorScheme.primary;
    return DropdownButton<Locale>(
      icon: const Icon(Icons.language),
      onChanged: (locale) {
        if (locale != null) {
          context.setLocale(locale);
        }
      },
      dropdownColor: primary,
      iconEnabledColor: onPrimary,
      iconDisabledColor: onPrimary,
      padding: const EdgeInsets.all(8.0),
      value: context.locale,
      underline: const SizedBox.shrink(),
      alignment: Alignment.center,
      items: [
        ...sortedLocales.map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              '${e.toPrettyView()} ',
              style: TextStyle(color: onPrimary),
            ),
          ),
        ),
      ],
    );
  }
}
