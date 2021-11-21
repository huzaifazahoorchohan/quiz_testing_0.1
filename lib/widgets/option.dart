import 'package:flutter/material.dart';

class MyOption extends StatelessWidget {
  const MyOption({
    Key? key,
    required this.nextQuestionFunction,
    required this.optionAnswer,
  }) : super(key: key);

  final Function nextQuestionFunction;
  final String optionAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => nextQuestionFunction(optionAnswer),
        child: Text(
          optionAnswer,
        ),
      ),
    );
  }
}
