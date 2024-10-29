import 'package:flutter/material.dart';
import 'package:flutter_application_quizz/home_page.dart';

void main() {
  runApp(Applicaton());
}

class Applicaton extends StatelessWidget {
  const Applicaton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: HomeWidget(),
    );
  }
}
