import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
   ResultScreen({super.key, this.correctAnswer=0});
  int correctAnswer=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Center(
          child: Text(
            'نتیجه آزمون',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(child: 
      Column(children: [
        Padding(
          padding: EdgeInsets.all(50),
          child: Image(image: AssetImage('images/cup.png'),
          ),
        ),
        Text('پاسخ های صحیح',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,),
        Text('$correctAnswer',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,),
      ],),),
      );
  }
}