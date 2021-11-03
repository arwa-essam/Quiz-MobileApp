 import 'package:flutter/material.dart';
 class Result extends StatelessWidget{
   final int resultscore;
   final resetfun ;
   Result(this.resultscore,this.resetfun);
   String get resultphrase{
     var resulttext='you did it';
     if(resultscore==30){
       resulttext='you are awesome!';
     }
     else if(resultscore==20){
       resulttext='you answered somewhat well';
     }
     else if(resultscore==10){
       resulttext='sorry:( you failed!';
     }
     return resulttext;
   }
   Widget build(BuildContext context){
     return Center(
       child: Column(
         children:[
           Text(resultphrase,
           style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),
           textAlign: TextAlign.center,),
         FlatButton(onPressed: resetfun, child: 
         Text('Reset Quiz!'),textColor: Colors.red,)
            
         ]
     )
     );
   }
 }