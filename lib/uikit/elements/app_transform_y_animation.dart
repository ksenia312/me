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

class _AppTransformYAnimationState extends State<AppTransformYAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isFaceVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
        reverseCurve: Curves.easeInBack,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    setState(() {
      isFaceVisible = !isFaceVisible;
    });
    _controller.status.isForwardOrCompleted == true ? _controller.reverse() : _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleAnimation,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final value = _animation.value;
          final angle = pi * widget.turnsCount * 2 * value;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateY(angle),
            child: _getFrontOrBack(angle),
          );
        },
      ),
    );
  }

  Widget _getFrontOrBack(double angle) {
    if ((angle <= pi / 2) || (angle >= 3 * pi / 2)) {
      return widget.faceChild;
    }
    return Transform(
      transform: Matrix4.identity()..rotateY(pi),
      alignment: Alignment.center,
      child: widget.backChild,
    );
  }
}
