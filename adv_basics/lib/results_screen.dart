import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget{

  final List<String> chosenAnswers;
  final void Function() onRestart;

  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});
  
  List<Map<String, Object>> getSumaryData(){
    final List<Map<String, Object>> sumarry = [];

    for (var i = 0; i < chosenAnswers.length; i++){
      sumarry.add({
        "question_index": i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return sumarry;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSumaryData();  
    final numOfTotalQuestion = questions.length; 
    final numOfCorrectQuestions= summaryData.where((data){
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
    width: double.infinity,
     child: Container(
      margin: EdgeInsets.all(1),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Απάντησες σωστα στις $numOfCorrectQuestions απο τις $numOfTotalQuestion ερωτήσεις!',
            style: GoogleFonts.play(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30,),
          QuestionsSummary(summaryData),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz'))
        ],
        
       )
     )
    );
  }
}