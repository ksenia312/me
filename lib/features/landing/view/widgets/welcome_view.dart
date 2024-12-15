import 'package:me/uikit/localization/localization_temp.dart';
import 'package:flutter/material.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/elements/app_chip.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final image = MainImage();
    final chips = Wrap(
      spacing: AppResponsiveSizes.large(context),
      runSpacing: AppResponsiveSizes.large(context),
      alignment: Responsive.get(context, def: () => WrapAlignment.end, m: () => WrapAlignment.center),
      children: [
        AppChip(text: LocaleKeys.skillTeamPlayer.tr()),
        AppChip(text: LocaleKeys.skillCommunicative.tr()),
        AppChip(text: LocaleKeys.skillProblemSolver.tr()),
        AppChip(text: LocaleKeys.skillLeader.tr()),
        AppChip(text: LocaleKeys.skillNonConflictual.tr()),
      ],
    );
    final title = AppTitle(title: LocaleKeys.welcomeTile.tr(), subtitle: LocaleKeys.welcomeSubtitle.tr());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.customColorScheme.gradientExtraLightColor,
            context.customColorScheme.gradientDarkColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.fromLTRB(
        AppResponsiveSizes.landingMargin(context),
        AppResponsiveSizes.x4Large(context) + AppResponsiveSizes.toolbarHeight(context),
        AppResponsiveSizes.landingMargin(context),
        0.0,
      ),
      child: Responsive.get(
        context,
        def: () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title,
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: image,
                ),
                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400.0, minWidth: 0),
                    child: chips,
                  ),
                ),
              ],
            ),
          ],
        ),
        m: () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title,
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400.0, minWidth: 0),
              child: chips,
            ),
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            Center(child: image),
          ],
        ),
      ),
    );
  }
}
