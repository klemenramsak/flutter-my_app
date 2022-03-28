import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
          children: const [
            Text("The question"),
            ElevatedButton(onPressed: null, child: Text("Answer 1")),
            ElevatedButton(onPressed: null, child: Text("Answer 2")),
            ElevatedButton(onPressed: null, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
