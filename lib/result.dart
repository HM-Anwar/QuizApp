import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function rhandle;
  final int score;
  Result(this.rhandle,this.score);
  String get result{
    var finalResult;
     if (score <= 5) {
      finalResult = 'You are good';
    } else if (score <= 10) {
      finalResult = 'You are Excellent!';
    } else if (score <= 16) {
      finalResult = 'You are Best';
    } else {
      finalResult = "You are bad";
    }
    return finalResult;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            width:double.infinity,
            margin: EdgeInsets.all(20),
            color: Colors.red,
            child: Text(result,
            style: TextStyle(fontSize: 30
        ,color: Colors.white,
        ),
        textAlign: TextAlign.center,
        ),
          ),
          FlatButton(
                onPressed: rhandle,
                textColor: Colors.blue,
                child: Text("Reset"),
            
          ),
        ],
      ),
    );
  }
}