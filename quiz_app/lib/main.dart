import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp()); //calls build method
// }

void main() => (MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: const Text('This is my default text!'),
      ),
    );
  }
}
