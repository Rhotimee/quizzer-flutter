import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function clickHandler;
  Answer({this.text, this.clickHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(text),
          onPressed: clickHandler,
        ));
  }
}
