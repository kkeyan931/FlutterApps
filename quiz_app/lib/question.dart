import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String _questionString;

  QuestionText(this._questionString);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        _questionString,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
