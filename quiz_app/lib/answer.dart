import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //The _answerQuestion is the stored in the property named selectHandler.Can be anything
  final String answerText;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, foregroundColor: Colors.white),
          onPressed: selectHandler,
          // ignore: prefer_const_constructors
          child: Text(answerText)),
    );
  }
}
