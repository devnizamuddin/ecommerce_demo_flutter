import 'package:ecommerce_demo_flutter/app/config/app_themes.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget LoginTopBar() {
  return CustomPaint(
    painter: MyCustomPainter(),
    child: Container(height: 160),
  );
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppThemes.PrimaryDarkColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0011111, size.height * 0.0020000);
    path0.lineTo(0, size.height * 0.8740000);
    path0.quadraticBezierTo(size.width * 0.1055556, size.height * 0.6630000,
        size.width * 0.1922222, size.height * 0.6620000);
    path0.cubicTo(
        size.width * 0.2997222,
        size.height * 0.6670000,
        size.width * 0.3525000,
        size.height * 0.8330000,
        size.width * 0.6988889,
        size.height * 0.7580000);
    path0.quadraticBezierTo(size.width * 0.9794444, size.height * 0.7630000,
        size.width * 0.9977778, size.height * 0.9940000);
    path0.lineTo(size.width, size.height * 0.0020000);
    path0.lineTo(size.width * 0.0011111, size.height * 0.0020000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0011111, size.height * 0.0020000);
    path0.lineTo(0, size.height * 0.8740000);
    path0.quadraticBezierTo(size.width * 0.1588889, size.height * 0.6630000,
        size.width * 0.2455556, size.height * 0.6620000);
    path0.cubicTo(
        size.width * 0.3530556,
        size.height * 0.6670000,
        size.width * 0.3613889,
        size.height * 0.8530000,
        size.width * 0.6988889,
        size.height * 0.7580000);
    path0.quadraticBezierTo(size.width * 0.9627778, size.height * 0.7530000,
        size.width * 0.9977778, size.height * 0.9940000);
    path0.lineTo(size.width, size.height * 0.0020000);
    path0.lineTo(size.width * 0.0011111, size.height * 0.0020000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
