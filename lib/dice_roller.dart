import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currDiceValue = 2;
  void rollDice() {
    setState(() {
      currDiceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currDiceValue.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(246, 212, 168, 66),
              textStyle: const TextStyle(
                fontSize: 22,
              ),
            ),
            child: const Text("Roll Dice"),
          ),
        ],
      ),
    );
  }
}
