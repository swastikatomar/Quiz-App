import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/quiz_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<QuizNotifier>(create: (_) => QuizNotifier()),
      ],
      child: const MaterialApp(
        home: homeScreen(),
      ),
    ),
  );
}
