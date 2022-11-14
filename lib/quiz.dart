import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz({
    super.key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['question'].toString(),
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                selectHandler: () => answerQuestion(answer['score']),
                answerText: answer['text'].toString(),
              ),
            )
            .toList(),
      ],
    );
  }
}
