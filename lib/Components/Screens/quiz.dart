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
      currentScreen = const QuestionsScreen();
    });
  }

  Widget? currentScreen;
  @override
  void initState() {
    currentScreen = StartScreen(changeScreen);
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          widget: Center(
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
