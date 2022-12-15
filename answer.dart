import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function selectHandler;
final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.fromLTRB(40,50,40,15),
      child: RaisedButton(color:Colors.indigo,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed:selectHandler,),);
  }
}
