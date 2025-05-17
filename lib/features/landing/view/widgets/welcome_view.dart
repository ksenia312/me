import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/elements/app_chip.dart';
import 'package:me/uikit/elements/app_title.dart';

import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final skill = context.keys.skill;
    final welcome = context.keys.welcome;

    final imageWidget = MainImage();
    final chips = Wrap(
      spacing: AppResponsiveSizes.large(context),
      runSpacing: AppResponsiveSizes.large(context),
      alignment: Responsive.get(context, def: () => WrapAlignment.end, m: () => WrapAlignment.center),
      children: [
        AppChip(text: skill.teamPlayer),
        AppChip(text: skill.communicative),
        AppChip(text: skill.problemSolver),
        AppChip(text: skill.leader),
        AppChip(text: skill.nonConflictual),
      ],
    );
    final titleWidget = AppTitle(title: welcome.title, subtitle: welcome.subtitle);
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
            titleWidget,
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 2, child: imageWidget),
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
            titleWidget,
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400.0, minWidth: 0),
              child: chips,
            ),
            SizedBox(height: AppResponsiveSizes.x10large(context)),
            Center(child: imageWidget),
          ],
        ),
      ),
    );
  }
}
