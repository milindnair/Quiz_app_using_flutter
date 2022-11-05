// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, foregroundColor: Colors.white),
          onPressed: selectHandler,
          // ignore: prefer_const_constructors
          child: Text(answerText)),
    );
  }
}
