import "package:flutter/material.dart";
import "package:quiz_app/Components/Screens/questions_screen.dart";
import "package:quiz_app/Components/Screens/start_screen.dart";
import "package:quiz_app/Components/gradient_container.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  void changeScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  String currentScreen = 'start-screen';

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          widget: Center(
            child: currentScreen == 'start-screen'
                ? StartScreen(changeScreen)
                : const QuestionsScreen(),
          ),
        ),
      ),
    );
  }
}
