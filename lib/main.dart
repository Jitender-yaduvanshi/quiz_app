import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  final _question = const [
    {
      'questionText': 'What\'s is Favourite color?',
      'answers': [
        {'text': 'black', 'score': 5},
        {'text': 'green', 'score': 4},
        {'text': 'yellow', 'score': 3},
        {'text': 'white', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your Favourite animal?',
      'answers': [
        {'text': 'black dear', 'score': 5},
        {'text': 'elephant', 'score': 4},
        {'text': 'dog', 'score': 3},
        {'text': 'fox', 'score': 2}
      ],
    },
    {
      'questionText': 'Who\'s your Favourite Actor?',
      'answers': [
        {'text': 'SRK', 'score': 5},
        {'text': 'SALMAN KHAN', 'score': 4},
        {'text': 'kartik', 'score': 3},
        {'text': 'AKSHAY KUMAR', 'score': 2}
      ],
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('MY FIRST APP'),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  question: _question,
                )
              : Result()),
    );
  }
}
