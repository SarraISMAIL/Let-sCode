
import 'package:app1/quiz.dart';
import 'package:app1/result.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 var  w =Colors.white;
 var  b =Colors.black;
 bool isSwitched = false;

  int _questionIndex = 0;
  int _totalScore = 0;
  int num0 =0 , num1=0 , num2=0 ;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0=0; num1=0; num2=0;
    });
  }

  void answerQuestion(score) {

    if(_questionIndex==0) num0 = score;
    else if(_questionIndex==1) num1 = score;
    else if(_questionIndex==2) num2 = score;


    _totalScore += score;
    setState(() {

      _questionIndex += 1;
    });


  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s Your favorite Color ?',
      'answers': [
        {'text': 'Black', 'score': 900},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': -30},
        {'text': 'Yellow', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': -30},
        {'text': 'Elephant', 'score': 50},
        {'text': 'Lion', 'score': -700,}
      ]
    },
    {
      'questionText': 'What\'s Your favorite Instructor ?',
      'answers': [
        {'text': 'Sarra1', 'score':5},
        {'text': 'Selma', 'score': -100},
        {'text': 'Hamza', 'score': 20},
        {'text': 'Olfa', 'score': 350},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false ,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged:(value){
               setState(() {
                 isSwitched = value;
               });

              },
            ),
          ],
        ),
        body: Container(
            width: double.infinity, //ell prend tt la longeur du colmn
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, answerQuestion)
                : Result(_resetQuiz, _totalScore) ,
            color: w),
        floatingActionButton: FloatingActionButton(
          child :Icon(Icons.arrow_back_sharp),
          onPressed: (){
            if (_questionIndex==1) _totalScore =_totalScore- num0;
            if (_questionIndex==2) _totalScore =_totalScore- num1;
            if (_questionIndex==3) _totalScore =_totalScore- num2;



            setState((){
              if(_questionIndex >0) {
                _questionIndex = _questionIndex - 1;
              }
            });
          },
        ),
      ),
    );
  }
}
