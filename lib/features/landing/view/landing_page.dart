import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/download_file/view/download_cv_button.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/components/mouse_tracking_animation.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';
import 'package:me/uikit/components/custom_app_bar.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/elements/app_section.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/elements/hovering_widget.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';

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
    return MouseTrackingAnimationWrapper(
      builder: (key, artboard, context) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            rightTabs: [LanguageButton()],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: AppResponsiveSizes.landingMargin(context)),
            controller: Responsive.get(
              context,
              def: () => _extraSpeedController,
              s: () => _scrollController,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: LandingPage.toolbarHeight),
                if (kDebugMode)
                  ElevatedButton(
                    onPressed: () => context.goNamed('uikit'),
                    child: const Text('Open debug menu'),
                  ),
                AppTitle(title: 'FLUTTER DEVELOPER', subtitle: 'Kseniia Nikitina'),
                SizedBox(height: AppResponsiveSizes.x10large(context)),
                Align(alignment: Alignment.centerLeft, child: MainImage()),
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
