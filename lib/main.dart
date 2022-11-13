import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final List<Map<String, Object>> _questions = [
    {
      'question':
          'Grand Central Terminal, Park Avenue, New York is the world\'s',
      'answer': [
        'largest railway station', 'highest railway station',
        'longest railway station', 'None of the above',
        // {'text': 'largest railway station', 'score': 1},
        // {'text': 'highest railway station', 'score': 0},
        // {'text': 'longest railway station', 'score': 0},
        // {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'question': 'Entomology is the science that studies',
      'answer': [
        'The formation of rocks', 'Behavior of human beings', 'Insects',
        'The origin and history of technical and scientific terms',
        // {'text': 'Behavior of human beings', 'score': 0},
        // {'text': 'Insects', 'score': 1},
        // {
        //   'text': 'The origin and history of technical and scientific terms',
        //   'score': 0
        // },
        // {'text': 'The formation of rocks', 'score': 0},
      ],
    },
    {
      'question':
          'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of',
      'answer': [
        'Africa', 'Asia', 'Australia', 'Africa',
        // {'text': 'Asia', 'score': 0},
        // {'text': 'Europe', 'score': 0},
        // {'text': 'Australia', 'score': 0},
        // {'text': 'Africa', 'score': 1},
      ],
    },
    // {
    //   'question': 'Garampani sanctuary is located at',
    //   'answer': [
    //     {'text': 'Junagarh, Gujarat', 'score': 0},
    //     {'text': 'Kohima, Nagaland', 'score': 0},
    //     {'text': 'Diphu, Assam', 'score': 1},
    //     {'text': 'Gangtok, Sikkim', 'score': 0},
    //   ],
    // },
    // {
    //   'question':
    //       'For which of the following disciplines is Nobel Prize awarded?',
    //   'answer': [
    //     {'text': 'Physics and Chemistry', 'score': 0},
    //     {'text': 'Physiology or Medicine', 'score': 0},
    //     {'text': 'Literature, Peace and Economics', 'score': 0},
    //     {'text': 'All of the above', 'score': 1},
    //   ],
    // },
    // {
    //   'question': 'Hitler party which came into power in 1933 is known as',
    //   'answer': [
    //     {'text': 'Nazi Party', 'score': 1},
    //     {'text': 'Labour Party', 'score': 0},
    //     {'text': 'Ku-Klux-Klan', 'score': 0},
    //     {'text': 'Democratic Party', 'score': 0},
    //   ],
    // },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : const Result(),
      ),
    );
  }
}
