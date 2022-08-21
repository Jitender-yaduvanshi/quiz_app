import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  var question = [
    'What\'s is Favourite color',
    'What\'s your Favourite animal'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('MY FIRST APP'),
          ),
          body: Column(
            children: [
              Text(question[questionIndex]),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: answerQuestion,
              ),
            ],
          )
          // Text("This is my first text"),
          ),
    );
  }
}
