import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rive/math.dart';
import 'package:rive/rive.dart';

class CatAnimationWrapper extends StatefulWidget {
  const CatAnimationWrapper({
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
  State<CatAnimationWrapper> createState() => _CatAnimationWrapperState();
}

class _CatAnimationWrapperState extends State<CatAnimationWrapper> {
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
    if (mounted) {
      setState(() => _controller = controller);
      setState(() => _artboard = artboard);
    }
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
    return Listener(
      onPointerSignal: (event) {
        if (event is PointerScrollEvent) {
          _updateAnimationPosition(event.position);
        }
      },
      child: MouseRegion(
        onHover: (event) => _updateAnimationPosition(event.position),
        child: widget.builder(_key, _artboard, context),
      ),
    );
  }
}

class CatAnimation extends StatelessWidget {
  const CatAnimation({
    super.key,
    this.artboard,
    this.size = CatAnimationWrapper.defaultSize,
  });

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
