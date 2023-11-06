import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      //Text('Start Screen');
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(172, 6, 6, 6)),

        // Opacity(
        // opacity: 0.6,
        // child: Image.asset('assets/images/quiz-logo.png', width: 300)),
        const SizedBox(height: 25),
        Text(
          'Welcome to the Quiz application',
          style: GoogleFonts.playfairDisplay(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 18,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 20, 19, 19)),
            icon: const Icon(Icons.quiz_rounded),
            label: const Text('Tap here to Start Quiz'))
      ]),
    );
  }
}
