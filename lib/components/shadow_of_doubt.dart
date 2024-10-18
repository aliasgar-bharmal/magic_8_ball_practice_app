import 'dart:math' as math;
import 'package:flutter/material.dart';

class ShadowOfDoubt extends StatelessWidget {
  const ShadowOfDoubt({
    super.key,
    required this.diameter,
  });

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Transform(
      origin: Offset(0, diameter),
      transform: Matrix4.identity()..rotateX(math.pi / 2.1),
      child: Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 25, color: Colors.grey.withOpacity(0.6))
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
