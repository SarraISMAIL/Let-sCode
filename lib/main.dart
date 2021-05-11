
import 'package:app1/quiz.dart';
import 'package:app1/result.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int _score =0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(score) {
    _totalScore += score;
    setState(() {

      _questionIndex += 1;
    });
    print(_questionIndex);
    print(_totalScore);
    print("Answer chosen !%n");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s Your favorite Color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Elephant', 'score': 50},
        {'text': 'Lion', 'score': 70,}
      ]
    },
    {
      'questionText': 'What\'s Your favorite Instructor ?',
      'answers': [
        {'text': 'Sarra1', 'score':5},
        {'text': 'Selma', 'score': 10},
        {'text': 'Hamza', 'score': 20},
        {'text': 'Olfa', 'score': 30},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
            width: double.infinity, //ell prend tt la longeur du colmn
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, answerQuestion)
                : Result(_resetQuiz, _totalScore)),
      ),
    );
  }
}
