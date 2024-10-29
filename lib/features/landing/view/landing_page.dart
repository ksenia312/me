import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/components/cat_animation.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

import 'widgets/summary_view.dart';
import 'widgets/welcome_view.dart';

part 'widgets/about_me_view.dart';

part 'widgets/contacts_view.dart';

part 'widgets/download_cv_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const toolbarHeight = 80.0;

  @override
  State<LandingPage> createState() => _LandingState();
}

class _LandingState extends State<LandingPage> {
  final _extraSpeedController = ExtraSpeedScrollController(
    extraScrollSpeed: 40,
  );
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _extraSpeedController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CatAnimationWrapper(
      builder: (key, artboard, context) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            leftTabs: [],
            rightTabs: [
              if (kDebugMode)
                CustomToolbarTab(
                  color: context.customColorScheme.borderColor,
                  onPressed: (context) => context.goNamed('uikit'),
                  title: 'Open debug menu',
                ),
              LanguageButton(),
            ],
          ),
          body: SingleChildScrollView(
            controller: Responsive.get(
              context,
              def: () => _scrollController,
              s: () => _scrollController,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: LandingPage.toolbarHeight),
                const WelcomeView(),
                Transform.translate(
                  offset: Offset(0, -SummaryView.waveHeightOf(context)),
                  child: SummaryView(globalKey: key, artboard: artboard),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ExtraSpeedScrollController extends ScrollController {
  ExtraSpeedScrollController({int extraScrollSpeed = 0}) {
    super.addListener(() => _scrollListener(extraScrollSpeed));
  }

  void _scrollListener(int speed) {
    final position = super.position;
    final direction = position.userScrollDirection;
    if (direction != ScrollDirection.idle) {
      final isReverse = direction == ScrollDirection.reverse;
      final scrollEnd = super.offset + (isReverse ? speed : -speed);
      final result = min(
        position.maxScrollExtent,
        max(position.minScrollExtent, scrollEnd),
      );
      jumpTo(result);
    }
  }
}
