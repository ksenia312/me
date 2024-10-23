import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/features/download_file/presentation/download_cv_button.dart';
import 'package:me/features/landing/components/language_button.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/localization/codegen_loader.g.dart';
import 'package:me/uikit/app_section.dart';
import 'package:me/uikit/hovering_widget.dart';

import 'components/flutter_image.dart';
import 'components/greetings_text.dart';
import 'components/contact_button.dart';
import 'components/mouse_tracking_animation.dart';

part 'view/about_me_view.dart';

part 'view/contacts_view.dart';

part 'view/greetings_view.dart';

part 'view/download_cv_view.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  static const toolbarHeight = 80.0;

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
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
    return MouseTrackingAnimationWrapper(
      builder: (key, artboard, context) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: Landing.toolbarHeight,
            actions: const [Padding(padding: EdgeInsets.only(right: 16), child: LanguageButton())],
          ),
          body: SingleChildScrollView(
            controller: Responsive.get(
              context,
              def: () => _extraSpeedController,
              s: () => _scrollController,
            ),
            child: Column(
              children: [
                const SizedBox(height: Landing.toolbarHeight),
                const _GreetingsView(),
                const _ContactsView(),
                const _AboutMeView(),
                const _DownloadCVView(),
                SizedBox(
                  key: key,
                  child: MouseTrackingAnimation(
                    size: const Size(451, 392),
                    artboard: artboard,
                  ),
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
