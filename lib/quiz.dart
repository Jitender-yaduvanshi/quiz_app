import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
 final List<Map<String, Object>> question;
 final int questionIndex;
 final VoidCallback answerQuestion;
 Quiz({ required this.question,  required this.answerQuestion,required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]['answers'] as List<String>)
            .map((answers) {
          return Answer(answerQuestion, answers);
        }).toList()
      ],
    );
  }
}
