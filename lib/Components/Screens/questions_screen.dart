// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/Components/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionnumber = 0;
  void nextQuestion() {
    setState(() {
      currentQuestionnumber++;
    });
  }

  @override
  Widget build(context) {
    QuizQuestion currentQuestion = questions[currentQuestionnumber];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffeldList().map((option) {
              return AnswerButton(answerText: option, onTap: nextQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
