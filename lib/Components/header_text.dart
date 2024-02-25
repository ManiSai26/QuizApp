import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({super.key, required this.text});
  @override
  Widget build(context) {
    return Text(
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        text);
  }
}
