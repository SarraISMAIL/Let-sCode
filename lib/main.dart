import 'package:app1/answer.dart';
import 'package:app1/quiz.dart';
import 'package:app1/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;


  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });

  }
  void answerQuestion() {
   // if (_questionIndex == 2) {
     // _questionIndex = -1;
    //}

    setState(() {
      _questionIndex += 1;
    });
    print("$_questionIndex");
    print("Answer chosen !%n");
  }

  final List<Map<String, Object>> _question = [
    {'questionText':'What\'s Your favorite Color ?',
      'answers':['Black', 'Green', 'Blue','Yellow']
    },
    {'questionText':'What\'s Your favorite Animal ?',
      'answers':['Rabbit', 'Tiger', 'Elephant','Lion']
    },
    {'questionText':'What\'s Your favorite Instructor ?',
      'answers':['Sarra_1', 'Sarra_2', 'Sarra_3','Sarra_4']
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
            ?Quiz(_question, _questionIndex, answerQuestion)

            :Result(_resetQuiz)
    ),
    ),
    );
  }
}
