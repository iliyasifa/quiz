import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  const Answer(
      {required this.selectHandler, required this.answerText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}
