import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  final String value;

  Quizz({Key key, this.value}) : super(key: key);

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          AppBar(backgroundColor: Colors.black, title: Center(child: Text(''))),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 50,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('score de ${widget.value}: ${score}',
                        style: TextStyle(color: Colors.white, fontSize: 20,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
