import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/ques_ans.dart';
import 'package:flutter_application_1/quiz_notifier.dart';
import 'package:provider/provider.dart';

class resultScreen extends StatelessWidget {
  resultScreen({super.key, required this.lastAns});
  String lastAns;
  @override
  Widget build(BuildContext context) {
    var ob = Provider.of<QuizNotifier>(context);
    ob.userAns.add([quesAns[quesAns.length - 1].question, lastAns]);
    return Scaffold(
      appBar: AppBar(title: Text("RESULT",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),),
      backgroundColor: Color.fromARGB(255, 129, 191, 222),),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.cyan,
            Color.fromRGBO(255, 150, 236, 1),
            Color.fromARGB(255, 247, 230, 83),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [           
              Text(
                "Total Questions: ${quesAns.length}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    ob.totalCorrect();
                  },
                  child: Text("Calculate Result",
                  style: TextStyle(
                    fontSize: 30,
                  ),)),
              Text("Your Score: ${ob.correctCount}/4",
              style: TextStyle(
                fontSize: 24,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
