import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answerText, required this.ontap });
  final String answerText;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsetsDirectional.symmetric(horizontal:40 , vertical:10 ),
        backgroundColor:const Color.fromARGB(255, 69, 83, 233),
        foregroundColor: Colors.white,
      ),
      child: Text(answerText , textAlign: TextAlign.center),
    );
  }
}
