import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/hovering_widget.dart';

class FlutterImage extends StatelessWidget {
  const FlutterImage({super.key});

  @override
  Widget build(BuildContext context) {
    final delimiter = Responsive.get(context, def: () => 3, s: () => 1);
    final size = MediaQuery.sizeOf(context).width / delimiter;

    return HoveringWidget(
      builder: (context, isActive) {
        return SizedBox.square(
          dimension: size,
          child: Center(
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              alignment: Alignment.center,
              crossFadeState: isActive
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Assets.images.flutterMe.image(
                width: size,
                height: size,
                fit: BoxFit.fitWidth,
              ),
              secondChild: FlutterLogo(size: size),
            ),
          ),
        );
      },
    );
  }
}
