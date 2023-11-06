import 'package:flutter/material.dart';

class QuestionSummary extends StatefulWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary(this.summaryData, {super.key});

  @override
  State<QuestionSummary> createState() => _QuestionSummaryState();
}

class _QuestionSummaryState extends State<QuestionSummary> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: widget.summaryData.map((data) {
          return Row(
            children: [
              Text('${data['question']}'),
              Column(children: [
                Text('${data['question']}'),
                const SizedBox(
                  height: 5,
                ),
                Text('${data['user_answer']}'),
                Text('${data['correct_answer']}'),
              ]),
            ],
          );
        }).toList(),
      ),
    );
  }
}
