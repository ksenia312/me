import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/landing/view/landing_page.dart';
import 'package:me/uikit/elements/app_footer.dart';

class PetProjectFooter extends StatelessWidget {
  const PetProjectFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFooter(
      onWelcomePressed: () => context.pushReplacement('/', extra: LandingPageInitialTab.welcome),
      onSummaryPressed: () => context.pushReplacement('/', extra: LandingPageInitialTab.summary),
      onExperiencePressed: () => context.pushReplacement('/', extra: LandingPageInitialTab.experience),
      onProjectsPressed: () => context.pushReplacement('/', extra: LandingPageInitialTab.projects),
    );
  }
}
