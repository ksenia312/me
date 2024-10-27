import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/download_file/presentation/download_cv_button.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/localization/codegen_loader.g.dart';
import 'package:me/uikit/components/custom_app_bar.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/elements/app_section.dart';
import 'package:me/uikit/elements/hovering_widget.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';

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
          appBar: CustomAppBar(
            rightTabs: [LanguageButton()],
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
                if (kDebugMode)
                  ElevatedButton(
                    onPressed: () => context.goNamed('uikit'),
                    child: const Text('Open debug menu'),
                  ),
               MainImage(),
                const _ContactsView(),
                const _AboutMeView(),
                const _DownloadCVView(),
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
