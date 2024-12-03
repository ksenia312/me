import 'dart:math';

import 'package:flutter/material.dart';

class AppTransformYAnimation extends StatefulWidget {
  const AppTransformYAnimation({
    super.key,
    required this.faceChild,
    required this.backChild,
    this.borderRadius = const BorderRadius.all(Radius.circular(500.0)),
    this.duration = const Duration(milliseconds: 500),
    this.turnsCount = 0.5,
  });

  final Duration duration;
  final Widget faceChild;
  final Widget backChild;
  final BorderRadius borderRadius;
  final double turnsCount;

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
      duration: widget.duration,
      vsync: this,
    );
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
        if (_controller.status.isForwardOrCompleted) {
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

  double _angle(double value) => pi * widget.turnsCount * 2 * value;

  double _toDegrees(double radians) => radians * (180 / pi);
}
