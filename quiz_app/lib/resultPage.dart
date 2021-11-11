import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHadler;
  Result(this.totalScore, this.resetHadler);

  String get resultText {
    return "Your Score is " + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        CupertinoButton(
          child: Text(
            "Restart Test",
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          onPressed: resetHadler,
        ),
      ],
    );
  }
}
