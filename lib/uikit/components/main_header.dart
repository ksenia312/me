import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({
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

  static List<Widget> buildRightTabs(BuildContext context) {
    return [
      if (kDebugMode)
        CustomToolbarTab.listItem(
          color: context.customColorScheme.borderColor,
          onPressed: (context) => context.push('/uikit'),
          title: 'Open debug menu',
        ),
      LanguageButton(
        onLanguageChanged: (_) {
          Responsive.get(
            context,
            def: () {},
            s: () => context.pop(),
          );
        },
      ),
    ];
  }

  static List<Widget> buildLeftTabs(
    BuildContext context, {
    required VoidCallback? onWelcomePressed,
    required VoidCallback? onSummaryPressed,
    required VoidCallback? onExperiencePressed,
    required VoidCallback? onProjectsPressed,
  }) {
    final tab = context.keys.tab;
    return [
      CustomToolbarTab.listItem(
        onPressed: (context) => onWelcomePressed?.call(),
        title: tab.home,
      ),
      CustomToolbarTab.listItem(
        onPressed: (context) => onSummaryPressed?.call(),
        title: tab.summary,
      ),
      CustomToolbarTab.listItem(
        onPressed: (context) => onExperiencePressed?.call(),
        title: tab.experience,
      ),
      CustomToolbarTab.listItem(
        onPressed: (context) => onProjectsPressed?.call(),
        title: tab.projects,
      ),
    ];
  }

  @override
  Size get preferredSize => Size.fromHeight(AppResponsiveSizes.toolbarHeight());

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      rightTabs: buildRightTabs(context),
      leftTabs: buildLeftTabs(
        context,
        onExperiencePressed: onExperiencePressed,
        onProjectsPressed: onProjectsPressed,
        onSummaryPressed: onSummaryPressed,
        onWelcomePressed: onWelcomePressed,
      ),
    );
  }
}
