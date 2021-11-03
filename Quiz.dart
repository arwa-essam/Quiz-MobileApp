 import 'package:flutter/material.dart';
 import'./Question.dart';
 import './Answer.dart';
  class Quiz extends StatelessWidget{
     final questions;
      // List<Map<String,Object>>
     final Function answerquestion;
     final int questionindex;
     Quiz(this.questions,this.answerquestion,this.questionindex);

Widget build(BuildContext context){
   return Column(
     children: [
       Question(
       questions[questionindex]['questiontext']),
       ...(questions[questionindex]['answers'] as 
       List).map((answer){
         return Answer(()=>answerquestion(answer['score']),
         answer['text']);
       }).toList()

     ],
   );
  }



  }


