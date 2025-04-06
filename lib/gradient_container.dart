import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const Gap(20),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text("Roll it"))
          ],
        ))));
  }
}
