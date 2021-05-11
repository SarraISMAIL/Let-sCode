import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function q;
  final int resultScore;

  Result(this.q,this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "$resultScore",
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
