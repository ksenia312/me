import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/landing/notifier/landing_notifier.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/components/translated_widget.dart';
import 'package:me/uikit/components/up_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:provider/provider.dart';

import 'widgets/projects_view.dart';
import 'widgets/summary_view.dart';
import 'widgets/welcome_view.dart';

part 'widgets/contacts_view.dart';

part 'widgets/download_cv_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'Xenikii | ${LocaleKeys.pageTitle.tr()}',
      color: Colors.white,
      child: ChangeNotifierProvider(
        create: (context) => LandingNotifier(),
        child: Consumer<LandingNotifier>(
          builder: (context, notifier, _) {
            return Scaffold(
              extendBodyBehindAppBar: true,
              floatingActionButton: UpButton(controller: notifier.scrollController),
              appBar: CustomAppBar(
                rightTabs: _buildRightTabs(context, notifier),
                leftTabs: _buildLeftTabs(context, notifier),
              ),
              body: _LandingPageBody(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildRightTabs(BuildContext context, LandingNotifier notifier) {
    return [
      if (kDebugMode)
        CustomToolbarTab.listItem(
          color: context.customColorScheme.borderColor,
          onPressed: (context) => context.go('/uikit'),
          title: 'Open debug menu',
        ),
      LanguageButton(),
    ];
  }

  List<Widget> _buildLeftTabs(BuildContext context, LandingNotifier notifier) {
    return [
      CustomToolbarTab.listItem(
        onPressed: (context) => _scrollTo(notifier.welcomeKey),
        title: LocaleKeys.tabHome.tr(),
      ),
      CustomToolbarTab.listItem(
        onPressed: (context) => _scrollTo(notifier.summaryKey),
        title: LocaleKeys.tabSummary.tr(),
      ),
      CustomToolbarTab.listItem(
        onPressed: (context) => _scrollTo(notifier.projectsKey),
        title: LocaleKeys.tabProjects.tr(),
      ),
    ];
  }

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
    );
  }
}

class _LandingPageBody extends StatelessWidget {
  const _LandingPageBody();

  @override
  Widget build(BuildContext context) {
    return Consumer<LandingNotifier>(builder: (context, notifier, child) {
      return CatAnimationWrapper(
        builder: (key, artboard, context) {
          return SingleChildScrollView(
            controller: notifier.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WelcomeView(key: notifier.welcomeKey),
                TranslatedWidget(
                  key: notifier.summaryKey,
                  child: SummaryView(globalKey: key, artboard: artboard),
                ),
                TranslatedWidget(
                  child: ProjectsView(key: notifier.projectsKey),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
