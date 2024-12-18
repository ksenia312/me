import 'package:flutter/material.dart';

class AppProgress extends StatelessWidget {
  const AppProgress({super.key, required this.size, required this.width});

  factory AppProgress.small() => AppProgress(size: 12, width: 2);

  factory AppProgress.medium() => AppProgress(size: 16, width: 2);

  factory AppProgress.large() => AppProgress(size: 20, width: 2);

  final double size;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: CircularProgressIndicator.adaptive(
        strokeCap: StrokeCap.round,
        strokeWidth: width,
      ),
    );
  }
}
