import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/localization/locales.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  final sortedLocales = supportedLocales
    ..sort(
      (a, b) => b.languageCode.compareTo(a.languageCode),
    );

  BorderRadius get radius {
    return BorderRadius.circular(32);
  }

  @override
  Widget build(BuildContext context) {
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    final primary = Theme.of(context).colorScheme.primary;
    return Material(
      color: primary,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: radius),
      child: DropdownButton<Locale>(
        icon: const Icon(Icons.translate),
        onChanged: (locale) {
          if (locale != null) {
            context.setLocale(locale);
          }
        },
        dropdownColor: primary,
        iconEnabledColor: onPrimary,
        iconDisabledColor: onPrimary,
        borderRadius: radius,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        style: Theme.of(context).textTheme.bodyMedium,
        value: context.locale,
        underline: const SizedBox.shrink(),
        alignment: Alignment.center,
        items: [
          ...sortedLocales.map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                '${e.toPrettyView()} ',
                style: TextStyle(
                  color: onPrimary,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
