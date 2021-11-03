import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
  final  selecthandler;
  final String answertext;
  Answer(this.selecthandler,this.answertext);

 Widget build(BuildContext context){
   return Container(
     width: double.infinity,
     child: RaisedButton(
       color: Colors.blue,
       textColor: Colors.white,
       child: Text(answertext),
       onPressed:selecthandler,
       ),
       );
  }
   
}