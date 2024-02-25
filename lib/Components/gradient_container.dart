import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget widget;
  const GradientContainer({super.key, required this.widget});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 49, 11, 131),
            Color.fromARGB(255, 8, 13, 87)
          ],
        ),
      ),
      child: widget,
    );
  }
}
