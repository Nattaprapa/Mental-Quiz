import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore,this.resetHandlar);

  String get resultPhrase {
    String resultText;
    resultText = 'Depression Result Score: $resultScore';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 40, 10, 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(margin: EdgeInsets.all(10),),
          const Image(
            image: NetworkImage('https://i.picsum.photos/id/230/1500/1500.jpg?hmac=heg53PqHqX88fhXrDyqlqJK8lLJXGRudsOXMKB3BZtc'),
            height: 300,
          ),
          Container(margin: EdgeInsets.all(10),),
          Text('S c o r e  0 - 3   :   N o r m a l',
          textAlign: TextAlign.justify,),
          Container(margin: EdgeInsets.all(5),),
          Text('S c o r e  4 - 6   :   M o d e r a t e',
            textAlign: TextAlign.justify,),
          Container(margin: EdgeInsets.all(5),),
          Text('S c o r e  7 - 9   :    S e v e r e',
            textAlign: TextAlign.justify,),
          Container(margin: EdgeInsets.fromLTRB(10,40,10,10),),
          FlatButton(child: Text('Restart Quiz!',
          ),textColor:Colors.lightBlueAccent,onPressed: resetHandlar,)
        ],
      ),
    );
  }
}
