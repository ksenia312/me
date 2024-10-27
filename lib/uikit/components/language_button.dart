import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/localization/locales.dart';
import 'package:me/uikit/components/custom_app_bar.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/app_constants.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  final sortedLocales = supportedLocales
    ..sort(
      (a, b) => a.languageCode.compareTo(b.languageCode),
    );

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<Locale>(
      onChanged: (locale) {
        if (locale != null) context.setLocale(locale);
      },
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.zero,
        height: double.infinity,
        decoration: BoxDecoration(borderRadius: AppSizes.toolbarBorderRadius),
      ),
      dropdownStyleData: DropdownStyleData(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: AppSizes.toolbarBorderRadius,
        ),
        offset: Offset(-24.0, -8),
        scrollbarTheme: ScrollbarThemeData(
          mainAxisMargin: 8,
          thickness: WidgetStatePropertyAll(2),
          thumbColor: WidgetStatePropertyAll(AppColors.dimBlue.withOpacity(0.5)),
        ),
      ),
      iconStyleData: IconStyleData(icon: SizedBox.shrink()),
      menuItemStyleData: MenuItemStyleData(
        selectedMenuItemBuilder: (context, child) => Container(
          color: AppColors.dimBlue,
          child: child,
        ),
      ),
      style: Theme.of(context).textTheme.bodyMedium,
      value: context.locale,
      underline: const SizedBox.shrink(),
      alignment: Alignment.center,
      items: [
        ...sortedLocales.map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              e.languageCode.toUpperCase(),
              style: context.textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }
}
