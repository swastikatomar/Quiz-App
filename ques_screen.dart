import 'package:flutter/material.dart';
import 'package:flutter_application_1/ans_buttons.dart';
import 'package:flutter_application_1/data/ques_ans.dart';
import 'package:flutter_application_1/quiz_notifier.dart';
import 'package:flutter_application_1/result.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    var ob = Provider.of<QuizNotifier>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 76, 140, 252),
            Color.fromARGB(255, 48, 255, 255)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quesAns[ob.currQuesIndex].question,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...quesAns[ob.currQuesIndex].Ans.map((ans) {
                return AnswerButton(
                    onTapAnswer: () {
                      if (ob.currQuesIndex < quesAns.length-1) {
                        ob.ChangeQA(ans);
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => resultScreen(lastAns: ans)));
                      }
                    },
                    answer: ans);
              })
            ],
          ),
        ),
      ),
    );
  }
}
