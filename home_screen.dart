import 'package:flutter/material.dart';
import 'package:flutter_application_1/ques_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: const Text("                QUIZ APP"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 126, 194, 239),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 175, 202, 250),
              Color.fromARGB(255, 246, 146, 183),
              Color.fromARGB(255, 191, 232, 172),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Press the button to begin the quiz",
                style: GoogleFonts.laBelleAurore(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionScreen()
                    ),
                  );
                },
                child: Text(
                  "START",
                  style: GoogleFonts.labrada(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
