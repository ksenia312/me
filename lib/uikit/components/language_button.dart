import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/localization/locales.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
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
    return Responsive.get(
      context,
      def: () => _LanguageButtonDesktop(sortedLocales: sortedLocales),
      s: () => _LanguageButtonMobile(sortedLocales: sortedLocales),
    );
  }
}

class _LanguageButtonDesktop extends StatelessWidget {
  const _LanguageButtonDesktop({required this.sortedLocales});

  final List<Locale> sortedLocales;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<Locale>(
      onChanged: (locale) {
        if (locale != null) context.setLocale(locale);
      },
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.symmetric(horizontal: AppResponsiveSizes.medium(context)),
        height: AppResponsiveSizes.tabHeight(context),
        decoration: BoxDecoration(borderRadius: AppSizes.toolbarBorderRadius),
      ),
      dropdownStyleData: DropdownStyleData(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(borderRadius: AppSizes.toolbarBorderRadius),
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
          alignment: Alignment.center,
          child: child,
        ),
      ),
      style: context.textTheme.bodyMedium,
      value: context.locale,
      underline: const SizedBox.shrink(),
      alignment: Alignment.center,
      items: [
        ...sortedLocales.map(
          (e) => DropdownMenuItem(
            value: e,
            alignment: Alignment.center,
            child: _LanguageItem(locale: e),
          ),
        ),
      ],
    );
  }
}

class _LanguageButtonMobile extends StatelessWidget {
  const _LanguageButtonMobile({required this.sortedLocales});

  final List<Locale> sortedLocales;

  @override
  Widget build(BuildContext context) {
    return CustomToolbarTab.listItem(
      popOnMobile: false,
      titleWidget: _LanguageItem(locale: context.locale, showFull: true),
      onPressed: (context) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height - AppResponsiveSizes.toolbarHeight(context),
        ),
        builder: (context) => _MobileLanguageSelectorBottomSheet(sortedLocales: sortedLocales),
      ),
    );
  }
}

class _MobileLanguageSelectorBottomSheet extends StatefulWidget {
  const _MobileLanguageSelectorBottomSheet({required this.sortedLocales});

  final List<Locale> sortedLocales;

  @override
  State<_MobileLanguageSelectorBottomSheet> createState() => _MobileLanguageSelectorBottomSheetState();
}

class _MobileLanguageSelectorBottomSheetState extends State<_MobileLanguageSelectorBottomSheet> {
  late final _keys = Map.fromIterables(
    widget.sortedLocales.map((e) => e.toLanguageTag()),
    List.generate(widget.sortedLocales.length, (_) => GlobalKey()),
  );

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      try {
        Scrollable.ensureVisible(
          _keys[context.locale.toLanguageTag()]!.currentContext!,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
        );
      } catch (_) {}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppResponsiveSizes.medium(context),
        horizontal: AppResponsiveSizes.medium(context),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: AppResponsiveSizes.x2Large(context)),
          Text(
            'Language',
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppResponsiveSizes.x2Large(context)),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                ...widget.sortedLocales.map(
                  (e) => Padding(
                    key: _keys[e.toLanguageTag()],
                    padding: EdgeInsets.only(bottom: AppResponsiveSizes.medium(context)),
                    child: InkWell(
                      onTap: () {
                        context.setLocale(e);
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: AppSizes.toolbarBorderRadius,
                          color: context.locale == e ? AppColors.blueMore : AppColors.blueMore.withOpacity(0.3),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppResponsiveSizes.x3Large(context),
                        ),
                        child: _LanguageItem(locale: e, showFull: true),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  const _LanguageItem({required this.locale, this.showFull = false});

  final Locale locale;
  final bool showFull;

  @override
  Widget build(BuildContext context) {
    return Text(
      showFull ? locale.toPrettyView() : locale.languageCode.toUpperCase(),
      style: context.textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }
}
