import 'package:flutter/material.dart';
import 'package:quiz_app/Components/header_text.dart';
import 'package:quiz_app/Components/start_quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          height: 250,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 40,
        ),
        const HeaderText(text: "Learn Flutter the fun way!"),
        const SizedBox(
          height: 40,
        ),
        const StartQuiz(),
      ],
    );
  }
}
