import 'package:flutter_application_quizz/data/question.dart';

List<Question> getQuestionList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهور ترین شعبدهباز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answrList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answrList = [
    '(شوروی سابق)روسیه',
    'آمریکا',
    'چین',
    'هند'
  ];

  return [firstQuestion, secondQuestion];
}
