import 'package:flutter/material.dart';
import 'statement.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyA pp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State {
  List<Icon> scoreKeeper = [];

  List statementsAndAnswers = [
    Statement(s: 'Geöffnete Apps brauchen viel Akku.', a: false),
    Statement(
        s: 'Eine Kamera mit mehr Megapixeln resultiert in besseren Bildern.',
        a: false),
    Statement(s: '5G frisst nicht mehr Daten als 4G.', a: true),
    Statement(s: 'Fertig!', a: false),
  ];

  int statementCounter = 0;

  bool checkIfLastStatement() {
    if (statementCounter >= statementsAndAnswers.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = statementsAndAnswers[statementCounter].statementAnswer;

    setState(() {
      // prüfen, ob das Ende des Quiz erreicht wurde
      if (checkIfLastStatement() == true) {
        // Anzahl Haken-Icons aufsummieren
        int score = 0;
        scoreKeeper.forEach((element) {
          if (element.icon == Icons.check) {
            score++;
          }
        });

        // Das wäre der Standard-Code für eine rFlutter Alert Warnmeldung:
        // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        // für unsere Zwecke angepasst:
        Alert(
          context: context,
          title: 'Spielstand',
          desc: 'Anzahl erreichte Punkte: $score',
        ).show();

        // statementCounter zurücksetzen
        statementCounter = 0;

        // scoreKeeper zurücksetzen
        scoreKeeper = [];
      }

      // wenn noch nicht das Ende erreicht wurde, folgende Schritte wiederholen:
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        statementCounter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                statementsAndAnswers[statementCounter].statementText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Wahr',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  checkAnswer(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'Falsch',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  checkAnswer(false);
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
