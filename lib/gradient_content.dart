import 'package:flutter/material.dart';
import 'package:dice_game/dice_roller.dart';

class GradientContent extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContent(this.color1, this.color2, {super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: DiceRoller(),
    );
  }
}
