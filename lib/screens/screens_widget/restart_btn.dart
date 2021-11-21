import 'package:flutter/material.dart';

class RestartBtn extends StatelessWidget {
  const RestartBtn({
    Key? key,
    required this.restartQuiz,
  }) : super(key: key);
  final Function restartQuiz;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        restartQuiz();
      },
      child: const Text("Restart"),
    );
  }
}
