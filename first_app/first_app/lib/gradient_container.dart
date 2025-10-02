import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAllignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  GradientContainer.purple({super.key})
    : startColor = Color.fromARGB(255, 156, 135, 230),
      endColor = Color.fromARGB(255, 83, 47, 167);

  final Color startColor;
  final Color endColor;
  final text = 'Hello World!';
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAllignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
