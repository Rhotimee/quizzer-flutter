import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import './answer.dart';
import "./question.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  static const _questions = [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {'text': 'Lion', 'score': 1},
        {'text': 'Tiger', 'score': 4},
        {'text': 'Dog', 'score': 2},
        {'text': 'Snake', 'score': 9}
      ]
    },
    {
      'questionText': "who's your favourite instructor?",
      'answers': [
        {'text': 'Ted', 'score': 4},
        {'text': 'Max', 'score': 6},
        {'text': 'Dan', 'score': 1},
        {'text': 'Zan', 'score': 5}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quizzer"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
