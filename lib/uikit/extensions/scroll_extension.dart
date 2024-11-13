import 'package:flutter/material.dart';

extension ScrollControllerExtension on ScrollController {
  void animateWithFlatSpeed(
    BuildContext context, {
    required double offset,
    Curve curve = Curves.easeInOut,
  }) {
    final scrollDistance = (position.pixels - offset).abs();
    final duration = Duration(
      milliseconds: (scrollDistance / 10).clamp(200, 800).toInt(),
    );
    animateTo(
      offset,
      duration: duration,
      curve: curve,
    );
  }
}
