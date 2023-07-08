import 'package:eng_app/question_list.dart';
import 'package:eng_app/quiz_screen.dart';
import 'package:eng_app/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp()),
  );
} //runapp 내부의 myapp을 materialapp으로 감싸주기

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  void answerPressed(int score) {
    setState(() {
      questionIndex++;
    });
    totalScore = totalScore + score;
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
    totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFDF7),
      appBar: AppBar(
          toolbarHeight: 40,
          centerTitle: true, //가운데 정렬
          title: const Text(
            "Let's make quiz app!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: (questionIndex < questionList.length)
          ? QuizScreen(
              //삼항연산자
              answerPressed: answerPressed,
              questionIndex: questionIndex,
            )
          : ResultScreen(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.explore), label: '어순배열'),
          NavigationDestination(icon: Icon(Icons.commute), label: '선택형'),
          NavigationDestination(icon: Icon(Icons.bookmark), label: '빈칸형'),
        ],
      ),
    );
  }
}
