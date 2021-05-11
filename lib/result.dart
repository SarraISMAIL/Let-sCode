import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function q;
  final int resultScore;

  Result(this.q,this.resultScore);

  String get resultPhrase{
    String resultText;

    if (resultScore >= 600){
      resultText ="You are Gooooooooood! your score is : $resultScore";
    }else if( resultScore >= 100) {
      resultText = "You are Goood! your score is : $resultScore";
    }else{
      resultText="You are so bad! your score is : $resultScore";
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(

        mainAxisAlignment :MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
