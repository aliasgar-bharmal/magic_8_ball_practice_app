import 'package:flutter/material.dart';

class SphereOfDestiny extends StatelessWidget {
  const SphereOfDestiny({
    super.key,
    required this.diameter,
    required this.lightSource,
    required this.child,
  });

  final double diameter;
  final Offset lightSource;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: Alignment(lightSource.dx, lightSource.dy),
          colors: const [Colors.grey, Colors.black],
        ),
      ),
      child: child,
    );
  }
}
