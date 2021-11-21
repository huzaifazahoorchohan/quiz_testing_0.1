import 'package:flutter/material.dart';

class MyQuestion extends StatelessWidget {
  const MyQuestion({Key? key, required this.questionText}) : super(key: key);
  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
