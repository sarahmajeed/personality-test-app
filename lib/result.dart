import "package:flutter/material.dart";


class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result({this.totalScore, this.resetHandler});

  String get resultPhrase {
    var resultText = 'You did it';
    if(totalScore <= 8) {
      resultText = 'You are innocent and sensitive';
    } else if(totalScore <=12) {
      resultText = 'Yo are pretty likable and strong';
    } else if(totalScore <= 16){
        resultText = 'You are...strange?';
    }
    else {
      resultText = 'You are evil';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: <Widget> [  Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
    ),
    RaisedButton(
      child: Text("Restart"),
      textColor: Colors.blue,
      onPressed: resetHandler,
    )
        ],
      )
      
    );
  }
}