import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State <MyApp>{
  var _totalscore=0;
  var _questionindex =0;
  void _resetquiz(){
    setState(() {
      _questionindex=0;
      _totalscore=0;
    });
  }
  void _answerquestion (int score){
    _totalscore +=score;
    setState(() {
      _questionindex=_questionindex+1;
    });
  }
  final _questions= const [
 {
   'questiontext':'What is the capital of Japan?',
   'answers':[
    {'text':'Tokyo','score':10},
    {'text':'Reo de Janiro','score':0},
    {'text':'Athens','score':0},
    {'text':'cairo','score':0},
   ]
 },
 {
   'questiontext':'What is the numbre of world contents?',
   'answers':[
    {'text':'10','score':0},
    {'text':'6','score':0},
    {'text':'4','score':0},
    {'text':'7','score':10},
   ]
 },
 {
   'questiontext':'Does Zeyad get abset about not meeting the deadlines?',
   'answers':[
    {'text':"Of course he doesn't get upset about that",'score':10},
    {'text':"Of course he doesn't get upset about that",'score':10},
    {'text':"Of course he doesn't get upset about that",'score':10},
    {'text':"Of course he doesn't get upset about that",'score':10},
   ]
 }

  ];
  Widget build(BuildContext context){
   return MaterialApp(home: Scaffold(appBar:AppBar(
     title: Text('General information Quiz'),) ,
     body: _questionindex<_questions.length?
     Quiz(_questions,_answerquestion,_questionindex)
     :Result(_totalscore,_resetquiz) )
   
     );
  }
}
void main() {
  runApp(MyApp());
}


