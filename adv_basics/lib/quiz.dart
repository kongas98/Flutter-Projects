import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  const Quiz({
    super.key
  });

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];


  void addAnswer(String asnwer){
    selectedAnswers.add(asnwer);

    if (selectedAnswers.length == questions.length){
      setState((){
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void restartQuiz(){
    setState((){
      selectedAnswers = [];
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: addAnswer);
    }
    
    if (activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
         onRestart: restartQuiz,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 156, 135, 230),
                Color.fromARGB(255, 83, 47, 167),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
