import 'dart:math' as math;
import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  const ArrowPainter(
      {required this.start,
      required this.end,
      this.color = Colors.black,
      this.strokeWidth = 4.0,
      required this.arrowSize});

  final Offset start;
  final Offset end;
  final Color color;
  final double strokeWidth;
  final double arrowSize;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    // Draw the line
    canvas.drawLine(start, end, paint);

    // Calculate the angle of the line
    final dx = end.dx - start.dx;
    final dy = end.dy - start.dy;
    final angle = math.atan2(dy, dx);

    final arrowAngle = math.pi / 4.5; // 60 degrees in radians

    final x1 = end.dx - arrowSize * math.cos(angle - arrowAngle);
    final y1 = end.dy - arrowSize * math.sin(angle - arrowAngle);
    final x2 = end.dx - arrowSize * math.cos(angle + arrowAngle);
    final y2 = end.dy - arrowSize * math.sin(angle + arrowAngle);

    final path = Path()
      ..moveTo(end.dx, end.dy)
      ..lineTo(x1, y1)
      ..moveTo(end.dx, end.dy)
      ..lineTo(x2, y2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) {
    return start != oldDelegate.start ||
        end != oldDelegate.end ||
        color != oldDelegate.color ||
        strokeWidth != oldDelegate.strokeWidth;
  }
}
