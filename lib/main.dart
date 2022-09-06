import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var question = const [
    {
      'questionText': 'What\'s is Favourite color?',
      'answers': ['black', 'green', 'yellow', 'white'],
    },
    {
      'questionText': 'What\'s your Favourite animal?',
      'answers': ['LION', 'deer', 'cow', 'dog'],
    },
    {
      'questionText': 'Who\'s your Favourite Actor?',
      'answers': ['SRK', 'SALMAN KHAN', 'kartik', 'Akshay'],
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('MY FIRST APP'),
          ),
          body: _questionIndex < question.length
              ? Column(
                  children: [
                    Question(
                        question[_questionIndex]['questionText'] as String),
                    ...(question[_questionIndex]['answers'] as List<String>)
                        .map((answers) {
                      return Answer(_answerQuestion, answers);
                    }).toList()
                  ],
                )
              : Center(child: Text('You did it.'))),
    );
  }
}
