import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  final int totalScore;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    String resultMessage;

    if (totalScore <= 0) {
      resultMessage = '0점입니다!';
    } else if (totalScore <= 1) {
      resultMessage = '1점입니다!';
    } else if (totalScore <= 2) {
      resultMessage = '2점입니다!';
    } else {
      resultMessage = '만점입니다';
    }

    String totalScore2 = totalScore.toString();

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Text("최종점수"),
          const SizedBox(
            height: 20,
          ),
          Text(totalScore2),
          const SizedBox(
            height: 20,
          ),
          Text(resultMessage),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
