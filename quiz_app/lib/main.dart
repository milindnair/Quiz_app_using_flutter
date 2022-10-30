// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  // var questionIndex = 0;
  // void answerQuestion() {
  //   questionIndex = questionIndex + 1;
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // ignore: prefer_const_constructors
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
