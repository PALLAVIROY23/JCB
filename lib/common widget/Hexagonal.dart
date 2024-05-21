import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class HexagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xffF9CD45); // Set the color of the hexagon

    final double width = size.width;
    final double height = size.height;
    final double halfWidth = width / 2;
    final double halfHeight = height / 2;

    final double centerX = halfWidth;
    final double centerY = halfHeight;

    final double radiusX = halfWidth;
    final double radiusY = halfHeight;

    final double angle = pi / 3;

    Path path = Path()
      ..moveTo(centerX + radiusX * cos(0), centerY + radiusY * sin(0));

    for (int i = 1; i < 6; i++) {
      path.lineTo(centerX + radiusX * cos(angle * i),
          centerY + radiusY * sin(angle * i));
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

HexagonWidget(  {Icon? icon,   String?image }){
  return Container(
    height: 100,
    width: 100,
    child: CustomPaint(
      child: Image.asset(image!),
      painter: HexagonPainter(
        
      ),
      size: Size(100, 100), // Set the size of the hexagon
    ),
  );

}

class HexagonWidgets extends StatelessWidget {
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: CustomPaint(
        child: icon,
        painter: HexagonPainter(
        ),
        size: Size(100, 100), // Set the size of the hexagon
      ),
    );
  }
}


