import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final Color color;
  final double raduis;
  final double blurX;
  final double blurY;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.color,
    required this.raduis,
    this.blurX = 3,
    this.blurY = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(raduis)),
          ),
          child: child,
        ),
      ),
    );
  }
}
