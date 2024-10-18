import 'dart:math';
import 'package:flutter/material.dart';

class WindowOfOpportunity extends StatelessWidget {
  const WindowOfOpportunity({
    super.key,
    required this.lightSource,
    required this.child,
  });

  final Offset lightSource;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final innerShadowWidth = lightSource.distance * 0.1;
    final portalShadowOffset =
        Offset.fromDirection(pi + lightSource.direction, innerShadowWidth);

    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            center: Alignment(portalShadowOffset.dx, portalShadowOffset.dy),
            stops: [1 - innerShadowWidth, 1],
            colors: const [Color(0x661F1F1F), Colors.black],
          )),
      child: child,
    );
  }
}
