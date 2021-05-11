import 'package:app1/main.dart';
import 'package:flutter/material.dart';
class Question extends StatelessWidget {

  final String questionText;

  Question(this.questionText) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin : EdgeInsets.all(20.0),
      child: Text(questionText,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),

        textAlign: TextAlign.center,
      ),
    );
  }
}
