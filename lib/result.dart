import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'We\'re done here!';
    return resultText;
  }

  String get resultScore {
    return 'You\'re score is: $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$resultPhrase\n$resultScore',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          FlatButton(
            child: Text(
              'Go Back',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: resetQuiz,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
