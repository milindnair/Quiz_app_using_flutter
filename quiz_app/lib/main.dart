// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      {'questionText': "What's your favourite color?" , 'answers':["Red", "Green","Blue"]},
      {'questionText': "What's your favourite animal?" , 'answers':["Rat", "Cat","Dog"]},
      {'questionText': "What's your favourite food?" , 'answers':["a", "b","c"]},
    ];//list which has maps

    return MaterialApp(
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // ignore: prefer_const_constructors
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
