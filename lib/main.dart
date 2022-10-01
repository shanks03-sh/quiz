import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:core';
import 'package:flutter/src/material/icons.dart';
void main() {
 return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
        /* appBar: AppBar(
           backgroundColor: Colors.blueGrey,
           title: Center(
               child: Text("Quiz App"),
         ),*/
         body: Quiz(),
        ),
 ),
      );
}
 class Quiz extends StatefulWidget {

   @override
   State<Quiz> createState() => _QuizState();
 }

 class _QuizState extends State<Quiz> {
  List<String> Questions=["You can lead a cow downstairs but not upstairs",
    "Approximately one half of the human bones are in their feet",
  "A Slug\'s blood is green"];
  List<bool> answers=[false,true,false];
  int questionNumber=0;
   @override
   Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Expanded(
           flex: 5,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 50),
             child: Text(Questions[questionNumber],
             style: TextStyle(
              color: Colors.white,
               fontSize: 25.0
             ),
             textAlign: TextAlign.center,
             ),
           ),
         ),
         Expanded(

           child: Padding(
             padding: EdgeInsets.all(15.0),
             child: FlatButton(
               textColor: Colors.white,
               color: Colors.green,
               child: Text(
                   "True",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                 ),
               ),
               onPressed: (){
                 if(answers[questionNumber]==true){
                   print("you are correct");
                 }
                 else{
                   print("you are wrong");
                 }
                 setState(() {
                   questionNumber++;
                 });

               },
             ),
         ),
         ),
         Expanded(

           child: Padding(
             padding: EdgeInsets.all(15.0),

             child: FlatButton(
               textColor: Colors.white,
               color: Colors.red,
               child: Text(
                 "False",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                 ),
               ),
               onPressed: (){
                 if(answers[questionNumber]==false){
                   print("you are correct");
                 }
                 else{
                   print("you are wrong");
                 }
                 setState(() {
                   questionNumber++;
                 });
               },
             ),
           ),
         ),
       ],
     );
   }
 }
