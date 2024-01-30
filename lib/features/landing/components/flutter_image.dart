import 'dart:math';

import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/hovering_widget.dart';

class FlutterImage extends StatefulWidget {
  const FlutterImage({super.key});

  static const radius = BorderRadius.all(Radius.circular(1000));

  @override
  State<FlutterImage> createState() => _FlutterImageState();
}

class _FlutterImageState extends State<FlutterImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final delimiter = Responsive.get(context, def: () => 3, s: () => 1.2);
    final dimension = min(MediaQuery.sizeOf(context).width / delimiter, 450.0);

    final borderWidth = dimension / 35;
    final smallIconDimension = dimension / 26.5;
    final iconDimension = dimension / 17.5;
    final largeIconDimension = dimension / 12.0;

    final boxSize = Size(dimension, dimension);

    return _GradientBorderWrapper(
      borderWidth: borderWidth,
      child: ClipRRect(
        borderRadius: FlutterImage.radius,
        child: SizedBox.square(
          dimension: dimension,
          child: HoveringWidget(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            listener: _hoverListener,
            builder: (context, _) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: Assets.images.me.image(
                      width: dimension,
                      height: dimension,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ...[
                    _createAnimation(
                      logoDimension: smallIconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomLeft,
                      endLeftDelimiter: 11.5,
                      endTopDelimiter: 2.1,
                    ),
                    _createAnimation(
                      logoDimension: iconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomLeft,
                      endLeftDelimiter: 5,
                      endTopDelimiter: 2.5,
                    ),
                    _createAnimation(
                      logoDimension: largeIconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomLeft,
                      endLeftDelimiter: 6.5,
                      endTopDelimiter: 1.9,
                    ),
                    _createAnimation(
                      logoDimension: smallIconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomRight,
                      endLeftDelimiter: 1.1,
                      endTopDelimiter: 2,
                    ),
                    _createAnimation(
                      logoDimension: iconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomRight,
                      endLeftDelimiter: 1.2,
                      endTopDelimiter: 2.4,
                    ),
                    _createAnimation(
                      logoDimension: largeIconDimension,
                      maxSize: boxSize,
                      startCorner: Corner.bottomRight,
                      endLeftDelimiter: 1.2,
                      endTopDelimiter: 1.6,
                    ),
                  ]
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _hoverListener(bool isActive) {
    final isForward = controller.status == AnimationStatus.forward;
    final isCompleted = controller.status == AnimationStatus.completed;
    final isReverse = controller.status == AnimationStatus.reverse;
    final isDismissed = controller.status == AnimationStatus.dismissed;

    if (isActive && !(isForward || isCompleted)) {
      controller.forward(from: controller.value);
    } else if (!isActive && !(isReverse || isDismissed)) {
      controller.reverse(from: controller.value);
    }
  }

  Widget _createAnimation({
    required Size maxSize,
    required double logoDimension,
    required Corner startCorner,
    required double endLeftDelimiter,
    required double endTopDelimiter,
  }) {
    final startLeft =
        startCorner == Corner.bottomLeft ? 0.0 : maxSize.width - logoDimension;
    return PositionedTransition(
      rect: RelativeRectTween(
        begin: RelativeRect.fromSize(
          Rect.fromLTWH(
            startLeft,
            maxSize.height,
            logoDimension,
            logoDimension,
          ),
          maxSize,
        ),
        end: RelativeRect.fromSize(
          Rect.fromLTWH(
            (maxSize.width - logoDimension) / endLeftDelimiter,
            (maxSize.height - logoDimension) / endTopDelimiter,
            logoDimension,
            logoDimension,
          ),
          maxSize,
        ),
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.easeInOutCirc,
        ),
      ),
      child: FlutterLogo(size: logoDimension),
    );
  }
}

enum Corner { bottomLeft, bottomRight }

class _GradientBorderWrapper extends StatelessWidget {
  const _GradientBorderWrapper({
    required this.child,
    required this.borderWidth,
  });

  final double borderWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final innerDecoration = BoxDecoration(
      shape: BoxShape.circle,
      color: colorScheme.background,
    );

    final outerDecoration = BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: [
          colorScheme.tertiary,
          colorScheme.primary,
        ],
      ),
    );
    return Container(
      alignment: Alignment.center,
      decoration: outerDecoration,
      padding: EdgeInsets.all(borderWidth),
      child: Container(
        decoration: innerDecoration,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
