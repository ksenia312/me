import 'dart:math';

import 'package:flutter/material.dart';

class AppTransformYAnimation extends StatefulWidget {
  const AppTransformYAnimation({
    super.key,
    required this.faceChild,
    required this.backChild,
    this.borderRadius = const BorderRadius.all(Radius.circular(500.0)),
  });

  final Widget faceChild;
  final Widget backChild;
  final BorderRadius borderRadius;

  @override
  State<AppTransformYAnimation> createState() => _AppTransformYAnimationState();
}

class _AppTransformYAnimationState extends State<AppTransformYAnimation> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(() => setState(() {}));
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
      reverseCurve: Curves.easeInBack,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (_controller.isCompleted) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      },
      borderRadius: widget.borderRadius,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final angle = _angle(_animation.value);
          final degrees = _toDegrees(angle) % 360;
          final isFaceVisible = degrees < 90 || degrees > 270;

          return Transform(
            transform: _onTransform(_animation.value),
            alignment: Alignment.center,
            child: isFaceVisible
                ? widget.faceChild
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: widget.backChild,
                  ),
          );
        },
      ),
    );
  }

  Matrix4 _onTransform(double value) {
    return Matrix4.identity()
      ..setEntry(3, 2, 0.004)
      ..rotateY(_angle(value));
  }

  double _angle(double value) => pi * 1 * value;

  double _toDegrees(double radians) => radians * (180 / pi);
}
