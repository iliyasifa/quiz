import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  const Result({
    super.key,
    required this.resultScore,
    required this.resetHandler,
  });

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable";
    } else if (resultScore <= 16) {
      resultText = "You ...Strange";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "$resultPhrase (Score: $resultScore)",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: resetHandler(),
          child: const Text("Reset the Quiz"),
        ),
      ],
    );
  }
}
