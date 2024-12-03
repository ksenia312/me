import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/summary_notifier.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/components/summary_circle.dart';
import 'package:me/uikit/components/translated_widget.dart';
import 'package:me/uikit/custom_paint/background_wave_paint.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:rive/rive.dart';

class SummaryView extends StatefulWidget {
  const SummaryView({super.key, required this.globalKey, this.artboard});

  final GlobalKey globalKey;
  final Artboard? artboard;

  @override
  State<SummaryView> createState() => _SummaryViewState();
}

class _SummaryViewState extends State<SummaryView> {
  final _summaryNotifier = SummaryNotifier();

  @override
  Widget build(BuildContext context) {
    final models = [
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryTotalExperienceSubtitle),
        title: LocaleKeys.year.plural(
          _summaryNotifier.overallExperienceInYears,
          format: NumberFormat.decimalPatternDigits(decimalDigits: 1),
        ),
        subtitle: LocaleKeys.summaryTotalExperienceSubtitle.tr(),
        activeContent: ActiveSummaryText(
          text: LocaleKeys.summaryTotalExperienceContent.tr(),
        ),
      ),
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryFlutterExperienceSubtitle),
        title: LocaleKeys.year.plural(
          _summaryNotifier.flutterExperienceInYears,
          format: NumberFormat.decimalPatternDigits(decimalDigits: 1),
        ),
        subtitle: LocaleKeys.summaryFlutterExperienceSubtitle.tr(),
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: LocaleKeys.summaryFlutterExperienceContent1.tr()),
            ActiveSummaryTextSpan(
              text: LocaleKeys.summaryFlutterExperienceContent2.tr(),
              isBold: true,
              // hasSpaceInTheEnd: false,
            ),
            ActiveSummaryTextSpan(text: LocaleKeys.summaryFlutterExperienceContent3.tr()),
            ActiveSummaryTextSpan(text: LocaleKeys.summaryFlutterExperienceContent4.tr(), isBold: true),
            ActiveSummaryTextSpan(text: LocaleKeys.summaryFlutterExperienceContent5.tr()),
          ],
        ),
      ),
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryHighEducationTitle),
        title: LocaleKeys.summaryHighEducationTitle.tr(),
        subtitle: LocaleKeys.summaryHighEducationSubtitle.tr(),
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: LocaleKeys.summaryHighEducationContent1.tr()),
            ActiveSummaryTextSpan(text: LocaleKeys.summaryHighEducationContent2.tr(), isBold: true),
          ],
        ),
      ),
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryOpenSourceTitle),
        title: LocaleKeys.summaryOpenSourceTitle.tr(),
        subtitle: LocaleKeys.summaryOpenSourceSubtitle.tr(),
        activeContent: ActiveSummaryLink(
          title: LocaleKeys.summaryOpenSourceContent.tr(),
          buttonText: LocaleKeys.summaryOpenSourceContentButton.tr(),
          link: _summaryNotifier.packageLink,
        ),
      ),
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryGooglePlayTitle),
        title: LocaleKeys.summaryGooglePlayTitle.tr(),
        subtitle: LocaleKeys.summaryGooglePlaySubtitle.tr(),
        activeContent: ActiveSummaryLink(
          title: LocaleKeys.summaryGooglePlayContent.tr(),
          buttonText: LocaleKeys.summaryGooglePlayContentButton.tr(),
          link: _summaryNotifier.appLink,
        ),
      ),
      SummaryCircle(
        key: ValueKey(LocaleKeys.summaryEnglishTitle),
        title: LocaleKeys.summaryEnglishTitle.tr(),
        subtitle: LocaleKeys.summaryEnglishSubtitle.tr(),
        activeContent: ActiveSummaryText(text: LocaleKeys.summaryEnglishContent.tr()),
      ),
    ];

    return BackgroundWavePaint(
      waveHeight: TranslatedWidget.waveHeightOf(context),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppResponsiveSizes.landingMargin(context),
          AppResponsiveSizes.x2Large(context) + AppResponsiveSizes.toolbarHeight(context),
          AppResponsiveSizes.landingMargin(context),
          AppResponsiveSizes.large(context),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTitle(
              title: LocaleKeys.summaryTitle.tr(),
              subtitle: LocaleKeys.summarySubtitle.tr(),
              alignment: AppTitleAlignment.left,
            ),
            SizedBox(height: AppResponsiveSizes.x5Large(context)),
            Flexible(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: AppResponsiveSizes.x5Large(context),
                spacing: AppResponsiveSizes.x5Large(context),
                children: models,
              ),
            ),
            SizedBox(height: AppResponsiveSizes.large(context)),
            ...Responsive.get(
              context,
              def: () => [
                Center(child: CatAnimation(key: widget.globalKey, artboard: widget.artboard)),
                SizedBox(height: AppResponsiveSizes.x2Large(context)),
              ],
              s: () => [],
            ),
          ],
        ),
      ),
    );
  }
}
