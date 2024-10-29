import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundWavePaint extends StatelessWidget {
  const BackgroundWavePaint({super.key, required this.child, required this.waveHeight});

  final double waveHeight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: screenWidth,
      child: CustomPaint(
        size: Size.fromWidth(screenWidth),
        painter: _BackgroundWavePainter(waveHeight: waveHeight),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: waveHeight),
          child: child,
        ),
      ),
    );
  }
}

class _BackgroundWavePainter extends CustomPainter {
  const _BackgroundWavePainter({required this.waveHeight});

  final double waveHeight;

  double get clippedWaveHeight => waveHeight - 10;

  @override
  void paint(Canvas canvas, Size size) {
    final borderWidth = 2.5;
    final sizeInner = Size(size.width, size.height - borderWidth * 2);
    final gradient = LinearGradient(
      colors: [Color(0xFF141723), Color(0xFF090B0D)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final paintBorder = Paint()
      ..strokeWidth = borderWidth
      ..color = Color(0xFF2D2C33)
      ..style = PaintingStyle.stroke;

    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final pathUpper = createUpperWave(sizeInner);
    final pathLower = createLowerWave(sizeInner);
    final pathRect = createPathRect(sizeInner);

    canvas.drawPath(pathUpper, paintBorder);
    canvas.drawPath(pathLower, paintBorder);
    canvas.drawPath(pathRect, paintBorder);

    canvas.drawPath(pathUpper, paint);
    canvas.drawPath(pathLower, paint);
    canvas.drawPath(pathRect, paint);
  }

  Path createUpperWave(Size size) {
    final pathUpper = Path();
    pathUpper.moveTo(0, clippedWaveHeight);
    drawWave(
      size: size,
      path: pathUpper,
      height: clippedWaveHeight,
      verticalBaseline: 0,
    );
    pathUpper.lineTo(size.width, waveHeight);
    pathUpper.lineTo(0, waveHeight);
    pathUpper.close();
    return pathUpper;
  }

  Path createLowerWave(Size size) {
    final pathLower = Path();
    pathLower.moveTo(0, size.height);
    drawWave(
      size: size,
      path: pathLower,
      height: clippedWaveHeight,
      verticalBaseline: size.height - clippedWaveHeight,
    );
    pathLower.lineTo(size.width, size.height - waveHeight);
    pathLower.lineTo(0, size.height - waveHeight);
    pathLower.close();
    return pathLower;
  }

  Path createPathRect(Size size) {
    final pathRect = Path();
    pathRect.addRect(Rect.fromLTWH(0, clippedWaveHeight, size.width, size.height - clippedWaveHeight * 2));
    return pathRect;
  }

  void drawWave({
    required Path path,
    required Size size,
    required double verticalBaseline,
    required double height,
  }) {
    final y11 = -10;
    final y12 = 350;
    final y21 = 0;
    final y22 = 500;
    final height1 = (y11 - y12).abs() / 2;
    final height2 = (y21 - y22).abs() / 2;
    final maxValue = max(height1, height2);
    final fraction = height / maxValue;
    final width = size.width;
    path.cubicTo(
      width * 0.15,
      verticalBaseline + y11 * fraction,
      width * 0.3,
      verticalBaseline + y12 * fraction,
      width * 0.5,
      verticalBaseline + 150 * fraction,
    );
    path.cubicTo(
      width * 0.65,
      verticalBaseline + y21 * fraction,
      width * 0.8,
      verticalBaseline + y22 * fraction,
      width,
      verticalBaseline + 0,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is! _BackgroundWavePainter) true;

    return (oldDelegate as _BackgroundWavePainter).waveHeight != waveHeight;
  }
}
