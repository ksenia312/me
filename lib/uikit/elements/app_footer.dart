import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:me/uikit/components/main_header.dart';
import 'package:me/uikit/elements/app_link_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
    this.onWelcomePressed,
    this.onSummaryPressed,
    this.onExperiencePressed,
    this.onProjectsPressed,
  });

  final VoidCallback? onWelcomePressed;
  final VoidCallback? onSummaryPressed;
  final VoidCallback? onExperiencePressed;
  final VoidCallback? onProjectsPressed;

  @override
  Widget build(BuildContext context) {
    const spacer = 32.0;
    final bottomChildren = [
      Text('© 2024 xenikii', style: context.textTheme.bodySmall),
      Text('nikitina3619@gmail.com', style: context.textTheme.bodySmall),
    ];
    return Container(
      color: context.customColorScheme.bottomBarBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Responsive.get(
            context,
            def: () => SizedBox(
              height: AppResponsiveSizes.toolbarHeight(context),
              child: CustomTabsBuilder(
                leftTabs: MainHeader.buildLeftTabs(
                  context,
                  onExperiencePressed: onExperiencePressed,
                  onProjectsPressed: onProjectsPressed,
                  onSummaryPressed: onSummaryPressed,
                  onWelcomePressed: onWelcomePressed,
                ),
                rightTabs: [],
              ),
            ),
            m: () => SizedBox.shrink(),
          ),
          SizedBox(
            height: Responsive.get(context, def: () => 8.0, m: () => spacer),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppLinkButton.linkedin(url: 'https://www.linkedin.com/in/xenikii', size: AppLinkSize.small),
              SizedBox(width: AppResponsiveSizes.x5Large(context)),
              AppLinkButton.github(url: 'https://github.com/ksenia312', size: AppLinkSize.small),
              SizedBox(width: AppResponsiveSizes.x5Large(context)),
              AppLinkButton.telegram(url: 'https://t.me/xenikii', size: AppLinkSize.small),
              Spacer(),
            ],
          ),
          SizedBox(height: AppResponsiveSizes.small(context)),
          SelectionArea(
            child: Padding(
              padding: const EdgeInsets.all(spacer),
              child: Responsive.get(
                context,
                def: () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...bottomChildren.expandIndexed(
                      (index, e) => [if (index != 0) SizedBox(width: AppResponsiveSizes.x5Large(context)), e],
                    ),
                  ],
                ),
                m: () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...bottomChildren.expandIndexed(
                      (index, e) => [if (index != 0) SizedBox(height: AppResponsiveSizes.x5Large(context)), e],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
