import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerString;

  AnswerButton(this.selectHandler, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(
          answerString,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
