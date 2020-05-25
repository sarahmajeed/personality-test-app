import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
} 

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
   void _answerQuestion() {
     setState(() {
        _questionIndex++;
     });
     
     print(_questionIndex);
   }
  @override
  Widget build(BuildContext context){
    
  
   const questions = [
     {
       'questionText': "What's your favourite colour?",
       'answers': ['Black', 'Red', 'Green', 'White']
     },
     {
       'questionText': "What's your favourite animal?",
       'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant']
     },
     {
       'questionText': "Who's your favourite instructor?",
       'answers': ['Max', 'Colt', 'Andrei', 'Ed']
     }
 ];


    return 
    MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Personality App"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
         ...(questions[_questionIndex]['answers'] as List).map((answer) {
           return Answer(_answerQuestion, answer);
         }).toList()
     ],),
        ),
        )
    ;}
}



