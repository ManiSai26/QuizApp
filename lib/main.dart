// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:quiz_app/Components/Screens/start_screen.dart";
import "package:quiz_app/Components/gradient_container.dart";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        widget: Center(
          child: StartScreen(),
        ),
      ),
    ),
  ));
}
