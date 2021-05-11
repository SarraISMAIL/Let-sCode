import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function q;
  Result(this.q);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "DOne ! ! !",
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
