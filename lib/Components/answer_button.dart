import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 95, 14, 119),
        foregroundColor: Colors.white,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}
