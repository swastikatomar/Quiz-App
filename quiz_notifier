import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/ques_ans.dart';

class QuizNotifier extends ChangeNotifier {
  int currQuesIndex = 0;
  List userAns = [];
  int correctCount = 0;
  ChangeQA(String ans) {
    userAns.add([quesAns[currQuesIndex].question, ans]);
    print(userAns);
    currQuesIndex++;
    notifyListeners();
  }

  totalCorrect() {
    for (int i = 0; i < userAns.length; i++) {
      if (userAns[i][1] == quesAns[i].answer[0]) {
        correctCount++;
      }
    }
    notifyListeners();
    return correctCount;
  }
}
