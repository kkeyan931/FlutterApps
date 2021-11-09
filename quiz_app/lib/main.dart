import 'package:flutter/material.dart';

import './questionText.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var questionNumber = 0;

  var questions = {
    0: ["what is your name?", "karthik", "panneer", "vinoth", "kai"],
    1: ["what is your age?", "20", "22", "25", "18"],
    2: ["what is your height?", "180", "185", "175", "170"],
    3: ["what is your weight?", "60", "65", "55", "50"],
  };

  void changeQuestion() {
    setState(() {
      questionNumber++;
      if (questionNumber == (questions.length)) {
        questionNumber = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.red.shade200,
        ),
        body: Column(
          children: [
            QuestionText(questions[questionNumber]![0]),
            ElevatedButton(
              onPressed: changeQuestion,
              child: QuestionText(questions[questionNumber]![1]),
            ),
            ElevatedButton(
              onPressed: changeQuestion,
              child: QuestionText(questions[questionNumber]![2]),
            ),
            ElevatedButton(
              onPressed: changeQuestion,
              child: QuestionText(questions[questionNumber]![3]),
            ),
            ElevatedButton(
              onPressed: changeQuestion,
              child: QuestionText(questions[questionNumber]![4]),
            ),
          ],
        ),
      ),
    );
  }
}
