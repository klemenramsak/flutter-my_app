import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void answerQuestion() {
    print("Answer chosen");
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
            const Text("The question"),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("Answer 1")),
            ElevatedButton(
                onPressed: () => print("Answer 2 chosen"),
                child: const Text("Answer 2")),
            ElevatedButton(
                onPressed: () {
                  print("Answer 3 chosen");
                },
                child: const Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
