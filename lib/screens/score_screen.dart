import 'package:flutter/material.dart';

import 'screens_widget/compliment_text.dart';
import 'screens_widget/restart_btn.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key, required this.restartQuiz, required this.score})
      : super(key: key);
  final Function restartQuiz;
  final int score;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ComplimentText(
            score: score,
          ),
          const SizedBox(
            height: 20.0,
          ),
          RestartBtn(
            restartQuiz: restartQuiz,
          ),
        ],
      ),
    );
  }
}
