import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activescreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activescreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activescreen == 'questions-screen') {
      screenWidget = QuestionScreen(onselectAnswer: chooseAnswer);
    }
    if (activescreen == 'results-screen') {
      screenWidget = ResultsScreen(choosenAnswer: selectedAnswer);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 246, 3, 209),
                Color.fromARGB(255, 222, 218, 229)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
// class Quiz extends StatefulWidget {
//   final List<Map<String, dynamic>> summaryData; // Specify the type of summaryData.
//    Quiz(this.summaryData, Key? key ) ; // Fix the syntax of the super constructor.

//   @override
//   State<Quiz> createState() => _QuestionSummaryState();
// }

// class _QuestionSummaryState extends State<Quiz> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: SingleChildScrollView(
//         child: Column(
//           children: widget.summaryData.map((data) {
//             return Row(
//               children: [
//                 Text('${data['question']}'),
//                 Expanded(
//                   child: Column(children: [
//                     Text('${data['question']}'),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text('${data['user_answer']}'),
//                     Text('${data['correct_answer']}'),
//                   ]),
//                 ),
//               ],
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
