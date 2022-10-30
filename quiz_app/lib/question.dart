// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Question extends StatelessWidget {
  final String questionText;

  // ignore: prefer_const_constructors_in_immutables
  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(questionText,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
