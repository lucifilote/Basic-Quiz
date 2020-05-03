import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final questions;
  final int index;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[index]['text']),
      ...(questions[index]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            text: answer['text'],
            onPressed: () => answerQuestion(answer['score']));
      }).toList(),
    ]);
  }
}
