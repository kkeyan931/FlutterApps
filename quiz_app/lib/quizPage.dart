import 'package:flutter/material.dart';

import './answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionNumber;
  final Function changeQuestion;

  Quiz(this.questionsList, this.questionNumber, this.changeQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(questionsList[questionNumber]["question"] as String),
        ...(questionsList[questionNumber]["answers"] as List<String>).map(
          (item) {
            return AnswerButton(() => changeQuestion(item), item);
          },
        ).toList(),
      ],
    );
  }
}
