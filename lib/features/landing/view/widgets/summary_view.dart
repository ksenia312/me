import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/summary_notifier.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/components/summary_circle.dart';
import 'package:me/uikit/components/translated_widget.dart';
import 'package:me/uikit/custom_paint/background_wave_paint.dart';
import 'package:me/uikit/elements/app_title.dart';

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
    final summary = context.keys.summary;
    final totalExperience = summary.totalExperience;
    final flutterExperience = summary.flutterExperience;
    final highEducation = summary.highEducation;
    final openSource = summary.openSource;
    final googlePlay = summary.googlePlay;
    final english = summary.english;
    final models = [
      SummaryCircle(
        key: ValueKey(totalExperience.subtitle),
        title: context.keys.year(n: _summaryNotifier.overallExperienceInYears),
        subtitle: totalExperience.subtitle,
        activeContent: ActiveSummaryText(text: totalExperience.content),
      ),
      SummaryCircle(
        key: ValueKey(flutterExperience.subtitle),
        title: context.keys.year(n: _summaryNotifier.flutterExperienceInYears),
        subtitle: flutterExperience.subtitle,
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: flutterExperience.content1),
            ActiveSummaryTextSpan(text: flutterExperience.content2, isBold: true),
            ActiveSummaryTextSpan(text: flutterExperience.content3),
            ActiveSummaryTextSpan(text: flutterExperience.content4, isBold: true),
            ActiveSummaryTextSpan(text: flutterExperience.content5),
          ],
        ),
      ),
      SummaryCircle(
        key: ValueKey(highEducation.title),
        title: highEducation.title,
        subtitle: highEducation.subtitle,
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: highEducation.content1),
            ActiveSummaryTextSpan(text: highEducation.content2, isBold: true),
          ],
        ),
      ),
      SummaryCircle(
        key: ValueKey(openSource.title),
        title: openSource.title,
        subtitle: openSource.subtitle,
        activeContent: ActiveSummaryLink(
          title: openSource.content,
          buttonText: openSource.contentButton,
          link: _summaryNotifier.packageLink,
        ),
      ),
      SummaryCircle(
        key: ValueKey(googlePlay.title),
        title: googlePlay.title,
        subtitle: googlePlay.subtitle,
        activeContent: ActiveSummaryLink(
          title: googlePlay.content,
          buttonText: googlePlay.contentButton,
          link: _summaryNotifier.appLink,
        ),
      ),
      SummaryCircle(
        key: ValueKey(english.title),
        title: english.title,
        subtitle: english.subtitle,
        activeContent: ActiveSummaryText(text: english.content),
      ),
    ];

    return BackgroundWavePaint(
      waveHeight: TranslatedWidget.waveHeightOf(context),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppResponsiveSizes.landingMargin(context),
          0,
          AppResponsiveSizes.landingMargin(context),
          AppResponsiveSizes.large(context),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTitle(
              title: summary.title,
              subtitle: summary.subtitle,
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
