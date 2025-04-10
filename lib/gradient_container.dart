import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(
      {super.key, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return (Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(child: DiceRoller())));
  }
}
