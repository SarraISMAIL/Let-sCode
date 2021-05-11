import 'package:app1/main.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function q;
  final int resultScore;

  Result(this.q,this.resultScore);

  String get resultPhrase{
    String resultText;

    if (resultScore >= 600){
      resultText ="You are Awesome!" ;
    }else if( resultScore >= 100) {
      resultText = "You are Goood! ";
    }else{
      resultText="You are so bad!";
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment :MainAxisAlignment.center,
        children:<Widget> [
          Text("Your Score is :  $resultScore",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color:b),
            textAlign: TextAlign.center,

          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart the App ",
              style: TextStyle(fontSize: 32 ,color: Colors.blueAccent),
            ),
            onPressed: q ,
          )
        ],
      ),
    );
  }
}
