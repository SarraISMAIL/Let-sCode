import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final String answerText;
  final Function x ;
  Answer(this.x ,this.answerText);//here we are building a constructor to be able to declare the final variables!

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child : FlatButton(
            shape : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.greenAccent),
          ),
          color: Colors.lightBlueAccent,
          textColor: Colors.white,
          child  : Text(answerText, style: TextStyle(fontSize: 25)),
          onPressed: x ,

        ),
    );
  }
}
