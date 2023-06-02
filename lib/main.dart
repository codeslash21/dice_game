import 'package:dice_game/gradient_content.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContent(
            Color.fromARGB(255, 6, 87, 9), Color.fromARGB(255, 11, 146, 16)),
      ),
    );
  }
}
