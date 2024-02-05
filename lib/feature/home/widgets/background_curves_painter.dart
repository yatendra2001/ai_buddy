import 'package:flutter/material.dart';

class BackgroundCurvesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Draw multiple concentric curves
    for (double i = 0; i < size.height * 0.9; i += 20) {
      final path = Path()
        ..moveTo(0, i)
        ..quadraticBezierTo(
          size.width / 4,
          i - 10,
          size.width / 2,
          i,
        )
        ..quadraticBezierTo(
          size.width * 3 / 4,
          i + 10,
          size.width,
          i,
        );
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
