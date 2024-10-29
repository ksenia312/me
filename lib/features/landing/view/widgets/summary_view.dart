import 'package:flutter/material.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/components/summary_circle.dart';
import 'package:me/uikit/custom_paint/background_wave_paint.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:rive/rive.dart';

class SummaryViewModel {
  const SummaryViewModel({required this.title, required this.subtitle});

  final String title;
  final String subtitle;
}

class SummaryView extends StatelessWidget {
  const SummaryView({super.key, required this.globalKey, this.artboard});

  final GlobalKey globalKey;
  final Artboard? artboard;

  static double waveHeightOf(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth / 8;
  }

  @override
  Widget build(BuildContext context) {
    final models = [
      const SummaryViewModel(title: '6 years', subtitle: 'total experience'),
      const SummaryViewModel(title: '2.5 years', subtitle: 'Flutter experience'),
      const SummaryViewModel(title: 'High education', subtitle: 'in tech field'),
      const SummaryViewModel(title: 'Open-source', subtitle: 'currently active project'),
      const SummaryViewModel(title: 'Google Play', subtitle: 'currently active app'),
      const SummaryViewModel(title: 'English language', subtitle: 'working proficiency'),
    ];
    return BackgroundWavePaint(
      waveHeight: waveHeightOf(context),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsiveSizes.landingMargin(context),
          vertical: AppResponsiveSizes.x4Large(context),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTitle(title: 'SUMMARY', subtitle: 'Very very briefly', alignment: AppTitleAlignment.left),
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            Flexible(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: AppResponsiveSizes.x5Large(context),
                spacing: AppResponsiveSizes.x5Large(context),
                children: [
                  ...models.map((e) => SummaryCircle(title: e.title, subtitle: e.subtitle)),
                ],
              ),
            ),
            SizedBox(height: AppResponsiveSizes.x5Large(context)),
            ...Responsive.get(
              context,
              def: () => [
                Center(child: CatAnimation(key: globalKey, artboard: artboard)),
                SizedBox(height: AppResponsiveSizes.x10large(context)),
              ],
              s: () => [],
            ),
          ],
        ),
      ),
    );
  }
}
