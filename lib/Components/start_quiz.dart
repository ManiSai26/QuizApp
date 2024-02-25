import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});
  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      label: const Text("Start Quiz"),
      icon: const Icon(Icons.arrow_right_alt),
    );
  }
}
