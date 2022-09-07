import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => answerQuestion(answers['score']),
              (answers['text'] as String));
        }).toList()
      ],
    );
  }
}
