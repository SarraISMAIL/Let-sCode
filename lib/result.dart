import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function q;
  final int resultScore;

  Result(this.q,this.resultScore);

  String get resultPhrase{
    String resultText;

    if (resultScore >= 80){
      resultText ="You are Gooooooooood!";
    }else if( resultScore >= 50) {
      resultText = "You are Goood!";
    }else{
      resultText="You are so bad!";
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
