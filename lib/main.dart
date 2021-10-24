import 'package:flutter/material.dart';


import './quiz.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s is PC? ',
      'answers': [
        {'text': 'Personal Computer', 'score': 5},
        {'text': 'Perl Cosin', 'score': 0},
        {"text": 'Personal Cv', 'score': 0},
        {'text': 'Persian Cat', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s is CPU? ',
      'answers': [
        {'text': 'Central Processing Unit', 'score': 5},
        {'text': 'Computer Processing Unit', 'score': 0},
        {"text": 'Compare Program Unit', 'score': 0},
        {'text': 'Compact Processing Unit', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s is RAM? ',
      'answers': [
        {'text': 'Random Acess Memory', 'score': 5},
        {'text': 'Read Acess Memory', 'score': 0},
        {"text": 'Read And Memory', 'score': 0},
        {'text': 'Required Allocate Memory', 'score': 0},
      ],
    },
  ];

  var _index = 0;
  var _totalScore = 0;
  void _reset(){
       setState(() {
        _index = 0;
        _totalScore = 0;
              });
  }
  void _ind(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body:  _index < _questions.length 
        ? Quiz(
           questions: _questions,
           index: _index,
           ind: _ind,
         )
         : Result(_reset,_totalScore)
      ),
      );
  }
}
