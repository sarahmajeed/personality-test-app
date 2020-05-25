import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return _MyAppState();
  }
} 

class _MyAppState extends State<MyApp>{
   static const _questions = [
     {
       'questionText': "What's your favourite colour?",
       'answers': [
         {'text':'Black', 'score': 10}, {'text': 'Red', 'score': 5}, {'text':'Green', 'score': 3}, {'text':'White','score':1}
         ]

     },
     {
       'questionText': "What's your favourite animal?",
       'answers': [
         {'text':'Rabbit', 'score': 10}, {'text': 'Lion', 'score': 5}, {'text':'Peacock', 'score': 3}, {'text':'Cat','score':1}
         ]
     },
     {
       'questionText': "What's your favourite hobby?",
       'answers': [
          {'text':'Reading', 'score': 1}, {'text': 'TV Shows', 'score': 5}, {'text':'Bullying', 'score': 10}, {'text':'Coding','score':1}
          ]
     }
 ];
  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    }); 
    
  }

   void _answerQuestion(int score) {

     _totalScore += score;

     setState(() {
        _questionIndex++;
     });
     
     print(_questionIndex);
   }
  @override
  Widget build(BuildContext context){


    return 
    MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Personality App"),
        ),
        body: _questionIndex < _questions.length ? Quiz(
          answerQuestion:_answerQuestion, questionIndex: _questionIndex, questions: _questions,
          )  : Result(totalScore: _totalScore, resetHandler: _resetQuiz,)
        ),
        )
    ;
    }
}



