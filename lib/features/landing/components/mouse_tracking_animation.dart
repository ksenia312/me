import 'package:flutter/material.dart';
import 'package:rive/math.dart';
import 'package:rive/rive.dart';

class MouseTrackingAnimationWrapper extends StatefulWidget {
  const MouseTrackingAnimationWrapper({
    super.key,
    this.artboardName = 'Burb',
    this.animationName = 'Burb',
    this.path = 'assets/images/cat.riv',
    required this.builder,
  });

  final String artboardName;
  final String animationName;
  final String path;
  final Widget Function(
    GlobalKey globalKey,
    Artboard? artboard,
    BuildContext context,
  ) builder;

  static const defaultSize = Size(451, 392);

  @override
  State<MouseTrackingAnimationWrapper> createState() => _MouseTrackingAnimationWrapperState();
}

class _MouseTrackingAnimationWrapperState extends State<MouseTrackingAnimationWrapper> {
  final _key = GlobalKey();

  StateMachineController? _controller;
  Artboard? _artboard;

  @override
  void initState() {
    super.initState();
    _initializeAnimation();
  }

  Future<void> _initializeAnimation() async {
    final file = await RiveFile.asset(widget.path);
    final artboard = file.artboardByName(widget.artboardName);
    if (artboard == null) return;
    final controller = StateMachineController.fromArtboard(
      artboard,
      widget.animationName,
    );
    if (controller == null) return;

    artboard.addController(controller);
    setState(() => _controller = controller);
    setState(() => _artboard = artboard);
  }

  void _updateAnimationPosition(Offset globalPosition) {
    final renderBox = _key.currentContext?.findRenderObject();
    if (renderBox is! RenderBox) return;

    final size = renderBox.size;
    final localPosition = renderBox.globalToLocal(globalPosition);
    final boundedLocalPosition = Offset(
      localPosition.dx.clamp(0, size.width),
      localPosition.dy.clamp(0, size.height),
    );

    setState(() {
      _controller?.pointerMove(Vec2D.fromOffset(boundedLocalPosition));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => _updateAnimationPosition(event.position),
      child: widget.builder(_key, _artboard, context),
    );
  }
}

class MouseTrackingAnimation extends StatelessWidget {
  const MouseTrackingAnimation({
    Key? key,
    this.artboard,
    required this.size,
  }) : super(key: key);

  final Size size;
  final Artboard? artboard;

  @override
  Widget build(BuildContext context) {
    return artboard == null
        ? const SizedBox.shrink()
        : SizedBox.fromSize(
            size: size,
            child: Rive(
              artboard: artboard!,
              fit: BoxFit.contain,
              enablePointerEvents: true,
              useArtboardSize: true,
            ),
          );
  }
}
