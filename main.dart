import 'package:flutter/material.dart';
import 'package:flutter_first/result.dart';

import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Are you having problem with sleeping during the night such as nightmare, can’t sleep, ETC.?',
      'answers': [
        {'text': 'Never happened', 'score': 0},
        {'text': 'Happened sometimes', 'score': 1},
        {'text': 'Happened several times', 'score': 2},
        {'text': 'Happened every night', 'score': 3}
      ]
    },
    {
      'questionText': 'Little interest or preasure in doing things?',
      'answers': [
        {'text': 'Never happened', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3}
      ]
    }, {
      'questionText': 'Feeling tried or having little energy, not want to do anything?',
      'answers': [
        {'text': 'Never happened', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      theme: ThemeData(

        //backgroundColor: Color(blue),
        //scaffoldBackgroundColor: const Color(0xFFE8FCFF),
      ),
      home: Scaffold(
        //theme: new ThemeData(scaffoldBackgroundColor: const Color()),
        backgroundColor: Color(0xFFE8FCFF),
        appBar: AppBar(
          title: Text('Mental Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}


