import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';


class Quiz  extends StatelessWidget {

  final   List<Map<String, Object>> question ;
  final  int questionIndex;
  final  Function answerQuestion;
  //to solve the prblm of the private attributes!
  // so we create her variables as final and then we pass into constructor Quiz!
  Quiz(this.question, this.questionIndex , this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']),


        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer){

          return Answer(() => answerQuestion(answer['score']) ,answer['text']);
          //enti 9a3ed texecuti f action answerQuetion mch kn t3diha//puissq on a ajouter el score k parameter
        }).toList(), //This an object not a list of String

      ],
    ) ;
  }
}
