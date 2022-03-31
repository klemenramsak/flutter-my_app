import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
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
      "What's your favourite colour?",
      "What is your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text("Answer 1")),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text("Answer 2")),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
