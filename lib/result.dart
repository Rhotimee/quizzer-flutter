import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    if (score <= 8) {
      return "You are awesome and Innocent";
    } else if (score <= 12) {
      return "Pretty likeable";
    } else if (score <= 16) {
      return "You are... strange";
    } else {
      return "you are so bad";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
