import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quest;
  Question(this.quest);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        quest,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
