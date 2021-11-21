import 'package:flutter/material.dart';

import 'data/question_model.dart';
import 'screens/score_screen.dart';
import 'widgets/option.dart';
import 'widgets/question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuestionData questions = QuestionData();
  int currentQuestionIndex = 0;
  int totalScore = 1;

  void nextQuestion(answer) {
    setState(() {
      if (questions.questionList[currentQuestionIndex]["answer"] == answer) {
        totalScore += 1;
      }
      currentQuestionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz App"),
      ),
      body: currentQuestionIndex < questions.questionList.length
          ? Center(
              child: Column(
                children: [
                  MyQuestion(
                    questionText: questions.questionList[currentQuestionIndex]
                            ['question']
                        .toString(),
                  ),
                  ...(questions.questionList[currentQuestionIndex]["options"]
                          as List<String>)
                      .map((q) {
                    return MyOption(
                        nextQuestionFunction: nextQuestion, optionAnswer: q);
                  }).toList(),
                ],
              ),
            )
          : ScoreScreen(
              restartQuiz: resetQuiz,
              score: totalScore,
            ),
    );
  }
}
