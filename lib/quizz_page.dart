import 'package:flutter/material.dart';
import 'package:flutter_application_quizz/data/constants/constents.dart';
import 'package:flutter_application_quizz/data/question.dart';
import 'package:flutter_application_quizz/screens/result_screen.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAswerSumbited = false;
  int correctAnswer=0;
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()[shownQuestionIndex];
    String questionImageIndex = selectedQuestion!.imageNameNumber;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Center(
          child: Text(
            'سوال ${shownQuestionIndex + 1} از ${getQuestionList().length}',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedQuestion!.questionTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            ...List.generate(
              4,
              (index) => getOptionItem(index),
            ),
            if (isFinalAswerSumbited)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    minimumSize: Size(200, 50)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ResultScreen(correctAnswer: correctAnswer,),
                    ),
                  );
                },
                child: Text(
                  'مشاهده نتایج کوییز',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getOptionItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answrList[index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          print('wrong');
        }
        if (shownQuestionIndex == getQuestionList().length - 1) {
          isFinalAswerSumbited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionList().length - 1) {
            shownQuestionIndex++;
          } else {}
        });
      },
    );
  }
}
