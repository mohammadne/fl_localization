import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../common/rounded_animated_circle.dart';

class Stretchy3 extends StatelessWidget {
  const Stretchy3({
    @required this.value,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 270),
    this.curve = Curves.linear,
    this.activeColor = const Color(0xffFFFFFF),
    this.inActiveColor = const Color(0xff000000),
    this.size = 80,
  });

  final bool value;

  final ValueChanged<bool> onTap;

  final Duration duration;
  final Curve curve;

  final Color activeColor;
  final Color inActiveColor;

  final double size;

  @override
  Widget build(BuildContext context) {
    final height = size;
    final width = size * 2.5;

    return Row(
      children: [
        GestureDetector(
          onTap: () => onTap(!value),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size * 10),
            ),
            child: Stack(
              children: [
                RoundedAnimatedCircle(
                  curve: curve,
                  duration: duration,
                  size: size,
                  factor: 2.5,
                  color: activeColor,
                  margin: 0,
                ),

                // Movable Widget
                AnimatedAlign(
                  curve: curve,
                  duration: duration,
                  alignment:
                      value ? Alignment.centerRight : Alignment.centerLeft,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 1 : 2.5,
                    color: inActiveColor,
                    margin: 0,
                  ),
                ),

                AnimatedAlign(
                  curve: curve,
                  duration: duration,
                  alignment:
                      value ? Alignment.centerRight : Alignment.centerLeft,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 1 : 2.5,
                    color: inActiveColor,
                    margin: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}