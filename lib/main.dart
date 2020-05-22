import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  @override
  Widget build(BuildContext context){
   void answerQuestion() {
     //questionIndex++;
     print("Answer Chosen!");
   }
   var questions = [
     "What's your favourite colour?",
     "What's your favourite animal?",
     "csc",
     "asds","dkd"
   ];


    return 
    MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Personality App"),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
          RaisedButton(child: Text("Answer 2"), onPressed: () => print("Anwer 2 chosen")),
          RaisedButton(child: Text("Answer3"),onPressed: () {
            print("Answer 3 chosen");
          },),
          ],),
        ),
        )
    ;}
}