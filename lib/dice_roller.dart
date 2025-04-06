import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceValue = 2;

  void rollDice() {
    setState(() {
      currentDiceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceValue.png',
          width: 200,
        ),
        const Gap(20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            child: const Text("Roll it"))
      ],
    );
  }
}
