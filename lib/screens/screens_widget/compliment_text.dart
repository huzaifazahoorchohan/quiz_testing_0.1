import 'package:flutter/material.dart';

class ComplimentText extends StatelessWidget {
  const ComplimentText({
    Key? key,
    required this.score,
  }) : super(key: key);
  final int score;

  String get scoreCompliment {
    var resultText = "";
    if (score == 0) {
      resultText = "Very Bad";
    } else if (score == 1) {
      resultText = "Bad";
    } else if (score == 2) {
      resultText = "Need improvement";
    } else if (score == 3) {
      resultText = "Good but need more";
    } else if (score == 4) {
      resultText = "Very Good";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          scoreCompliment,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "You scored $score",
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
