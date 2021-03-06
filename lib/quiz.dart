import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int index;
  final Function ind;
  Quiz({
    @required this.questions,
    @required this.index,
    @required this.ind});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText'],
        ),
      ...(questions[index]['answers'] as List<Map<String,Object>>)
      .map((answer1) {
           return Answer(() => ind(answer1['score']),answer1['text']);
      }).toList()

       ],
    );
  }
}