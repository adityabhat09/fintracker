import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class RotatingCard extends StatelessWidget{
  final double width;
  final double height;
  final Color? color;
  const RotatingCard({super.key, required this.width, required this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return LoopAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 2 * pi), // 0° to 360° (2π)
      duration: const Duration(seconds: 10), // for 2 seconds per iteration
      builder: (context, value, _) {
        return Transform.rotate(
          angle: value, // use value
          child: Container(color: color, width: width, height: height,),
        );
      },
    );
  }
}