import 'package:flutter/material.dart';
import 'package:adv_basics/asnwer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{

  final void Function(String answer) onSelectAnswer;

  const QuestionsScreen({super.key, required this.onSelectAnswer});  

  @override
  State<QuestionsScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen>{

var currentQuestionIndex = 0;

void answerQuestion(String selectedAnswer){
  widget.onSelectAnswer(selectedAnswer);
  setState((){
    currentQuestionIndex ++;
  });
}

  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];

   return SizedBox(
    width: double.infinity,
     child: Container(
      margin: EdgeInsets.all(1),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.play(
              color: const Color.fromARGB(255, 241, 230, 248),
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AsnwerButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              }
            );
          })
        ],
       ),
     ),
   );
  }
  
}