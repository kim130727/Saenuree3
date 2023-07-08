import 'package:flutter/material.dart';
import 'package:eng_app/question_list.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.answerPressed,
      required this.questionIndex,
      required this.num})
      : super(key: key);

  final Function answerPressed;
  final int questionIndex;
  final int num;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: const Color(0xFF9DD77D),
        minimumSize: const Size(350, 50),
      ),
      onPressed: () {
        answerPressed(questionList[questionIndex]["answers"][num]["score"]);
      },
      child: Text(
        questionList[questionIndex]["answers"][num]["text"],
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0C3B00),
        ),
      ),
    );
  }
}
