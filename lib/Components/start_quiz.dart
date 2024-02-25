import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  final void Function() startQuiz;
  const StartQuiz(this.startQuiz, {super.key});
  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      label: const Text("Start Quiz"),
      icon: const Icon(Icons.arrow_right_alt),
    );
  }
}
