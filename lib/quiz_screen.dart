import 'package:eng_app/widget/button.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:flutter/material.dart';
import 'package:eng_app/question_list.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    Key? key,
    required this.answerPressed,
    required this.questionIndex,
  }) : super(key: key);

  final Function answerPressed;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset('images/quiz.jpeg', width: 350)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F3E9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        questionList[questionIndex]["questionText"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Button(
                          answerPressed: answerPressed,
                          questionIndex: questionIndex,
                          num: 0),
                      const SizedBox(height: 15),
                      Button(
                          answerPressed: answerPressed,
                          questionIndex: questionIndex,
                          num: 1),
                      const SizedBox(height: 15),
                      Button(
                          answerPressed: answerPressed,
                          questionIndex: questionIndex,
                          num: 2),
                      const SizedBox(height: 15),
                      Button(
                          answerPressed: answerPressed,
                          questionIndex: questionIndex,
                          num: 3),
                      const SizedBox(height: 15),
                      RoundCheckBox(
                          size: 25,
                          isChecked: false,
                          onTap: (selected) {
                            print(selected);
                            answerPressed(questionList[questionIndex]["answers"]
                                [0]["score"]);
                            questionList[questionIndex]["answers"][0]["text"];
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
