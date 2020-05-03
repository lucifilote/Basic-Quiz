import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'text': 'What is your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 10}
      ]
    },
    {
      'text': 'What is your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 5},
        {'text': 'Horse', 'score': 10},
        {'text': 'Rabbit', 'score': 20}
      ]
    },
  ];
  var _index = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_index < _questions.length) {
      setState(() {
        _index = _index + 1;
      });
    }
    print('answer question!');
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Basic Quiz App'),
          ),
          body: _index < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  index: _index)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
