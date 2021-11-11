import 'package:flutter/material.dart';

import 'quizPage.dart';
import 'resultPage.dart';

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
  var totalScore = 0;

  final questions = const [
    {
      "question": "what language does flutter use?",
      "answers": ["dart", "C", "C++", "python", "java"],
      "correctAnswer": "dart",
    },
    {
      "question": "which is not a flutter keyword?",
      "answers": ["var", "final", "const", "hello"],
      "correctAnswer": "hello",
    },
    {
      "question": "who built flutter?",
      "answers": ["Google", "FB", "Microsoft", "Oracle"],
      "correctAnswer": "Google",
    },
    {
      "question": "flutter can build?",
      "answers": ["Android", "iOS", "Web App", "All the above"],
      "correctAnswer": "All the above",
    },
  ];

  void resetQuiz() {
    setState(() {
      questionNumber = 0;
      totalScore = 0;
    });
  }

  void changeQuestion(String correctAnswer) {
    setState(() {
      if (correctAnswer == questions[questionNumber]["correctAnswer"]) {
        totalScore += 1;
      }
      questionNumber++;
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
        body: questionNumber < questions.length
            ? Quiz(questions, questionNumber, changeQuestion)
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
