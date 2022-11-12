import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'what\'s your car',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
