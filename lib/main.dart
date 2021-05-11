import 'package:flutter/material.dart';
import 'question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
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
        child : Column(
          children : <Widget>[
            Question(_question[1]),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child  : Text("Answer 1"),
                onPressed:(){},

            )

          ],
        ),

      ),
    ));
  }
}
