import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(Object context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),),
          const SizedBox(height: 30),
          Text(
            'Το Quiz μας!',
            style: GoogleFonts.play(
              color: const Color.fromARGB(255, 241, 230, 248),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 30),
          FilledButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}
