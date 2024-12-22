import 'package:me/uikit/components/main_header.dart';
import 'package:me/uikit/elements/app_footer.dart';
import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/landing_notifier.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/components/up_button.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:provider/provider.dart';

import 'widgets/experience_view.dart';
import 'widgets/projects_view.dart';
import 'widgets/summary_view.dart';
import 'widgets/welcome_view.dart';

enum LandingPageInitialTab { welcome, summary, experience, projects }

class LandingPage extends StatelessWidget {
  const LandingPage({super.key, this.initialTab});

  final LandingPageInitialTab? initialTab;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LandingNotifier(),
      child: Consumer<LandingNotifier>(
        builder: (context, notifier, _) => _LandingPage(notifier: notifier, initialTab: initialTab),
      ),
    );
  }
}

class _LandingPage extends StatefulWidget {
  const _LandingPage({required this.notifier, required this.initialTab});

  final LandingNotifier notifier;
  final LandingPageInitialTab? initialTab;

  @override
  State<_LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<_LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.initialTab != null) {
        Future.delayed(const Duration(milliseconds: 100), () {
          _scrollTo(
            switch (widget.initialTab!) {
              LandingPageInitialTab.welcome => widget.notifier.welcomeKey,
              LandingPageInitialTab.summary => widget.notifier.summaryKey,
              LandingPageInitialTab.experience => widget.notifier.experienceKey,
              LandingPageInitialTab.projects => widget.notifier.projectsKey,
            },
            duration: Duration.zero,
          );
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: UpButton(controller: widget.notifier.scrollController),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: MainHeader(
        onWelcomePressed: () => _scrollTo(widget.notifier.welcomeKey),
        onSummaryPressed: () => _scrollTo(widget.notifier.summaryKey),
        onExperiencePressed: () => _scrollTo(widget.notifier.experienceKey),
        onProjectsPressed: () => _scrollTo(widget.notifier.projectsKey),
      ),
      body: Consumer<LandingNotifier>(builder: (context, notifier, child) {
        return CatAnimationWrapper(
          builder: (key, artboard, context) {
            return SingleChildScrollView(
              controller: notifier.scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WelcomeView(key: notifier.welcomeKey),
                  Container(
                    key: notifier.summaryKey,
                    child: SummaryView(globalKey: key, artboard: artboard),
                  ),
                  ExperienceView(key: notifier.experienceKey),
                  ProjectsView(key: notifier.projectsKey),
                  SizedBox(height: AppResponsiveSizes.x8large(context)),
                  AppFooter(
                    onWelcomePressed: () => _scrollTo(notifier.welcomeKey),
                    onSummaryPressed: () => _scrollTo(notifier.summaryKey),
                    onExperiencePressed: () => _scrollTo(notifier.experienceKey),
                    onProjectsPressed: () => _scrollTo(notifier.projectsKey),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }

  void _scrollTo(GlobalKey key, {Duration duration = const Duration(milliseconds: 300)}) {
    final context = key.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: duration,
      curve: Curves.easeInOutCubic,
    );
  }
}
