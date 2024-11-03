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
    final models = [
      SummaryCircle(
        title: '${_summaryNotifier.overallExperienceInYears.toStringAsFixed(1)} years',
        subtitle: 'total experience',
        activeContent: ActiveSummaryText(
          text: 'Apart from Dart, I used Kotlin, Swift, JavaScript, Python, C#, R and more',
        ),
      ),
      SummaryCircle(
        title: '${_summaryNotifier.flutterExperienceInYears.toStringAsFixed(1)} years',
        subtitle: 'Flutter experience',
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: 'I build both'),
            ActiveSummaryTextSpan(text: 'web, mobile', isBold: true, hasSpaceInTheEnd: false),
            ActiveSummaryTextSpan(text: ', and'),
            ActiveSummaryTextSpan(text: 'backend', isBold: true),
            ActiveSummaryTextSpan(
              text: 'structures. I specialize in complex, multi-app systems and custom Dart/Flutter packages',
            ),
          ],
        ),
      ),
      SummaryCircle(
        title: 'High education',
        subtitle: 'in tech field',
        activeContent: ActiveSummaryRawText(
          spans: [
            ActiveSummaryTextSpan(text: 'Programming in information and communication systems at'),
            ActiveSummaryTextSpan(text: 'ITMO University', isBold: true),
          ],
        ),
      ),
      SummaryCircle(
        title: 'Open-source',
        subtitle: 'currently active project',
        activeContent: ActiveSummaryLink(
          title: 'Package for P2P communication',
          buttonText: 'Open package',
          link: _summaryNotifier.packageLink,
        ),
      ),
      SummaryCircle(
        title: 'Google Play',
        subtitle: 'currently active app',
        activeContent: ActiveSummaryLink(
          title: 'Offline chat application, supports texts and files',
          buttonText: 'Open app',
          link: _summaryNotifier.appLink,
        ),
      ),
      SummaryCircle(
        title: 'English language',
        subtitle: 'working proficiency',
        activeContent: ActiveSummaryText(text: 'I speak English every day'),
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
            AppTitle(title: 'SUMMARY', subtitle: 'Very very briefly', alignment: AppTitleAlignment.left),
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
