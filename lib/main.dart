import 'package:app1/answer.dart';
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

  void answerQuestion(){
    if (_questionIndex == 1){
      _questionIndex = -1 ;
    }
    setState(() {
      _questionIndex+=1;
    });
    print ("$_questionIndex");
    print("Answer chosen !%n");

  }
  final _question = [
    "What\'s Your favorite Color ?",
    "What\'s Your favorite Animal ?"
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
        child: Column(
          children: <Widget>[
            Question(_question[_questionIndex]),
            Answer(answerQuestion, "Answer 1 "),
            Answer(answerQuestion, "Answer 2 "),
            Answer(answerQuestion, "Answer 3 "),
           // Answer((){}, "Answer 4 "),

          ],
        ),
      ),
    ));
  }
}
