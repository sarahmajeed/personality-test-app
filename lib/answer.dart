import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer); //constructor
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        hoverColor: Colors.yellowAccent,
        child: Text(answer), 
        onPressed: selectHandler,),
    );
  }
}