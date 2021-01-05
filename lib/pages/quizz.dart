import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'dart:math';

class Quizz extends StatefulWidget {
  final List<Country> data;
  final String quizzType;

  Quizz({this.data, this.quizzType});

  int tap = 0;
  int score = 0;

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int randomIndex;
  int randomQuestionIndex1;
  int randomQuestionIndex2;
  int randomQuestionIndex3;
  int randomQuestionIndex4;
  int randomNumber;
  String country;
  String capital;

  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    randomIndex = rng.nextInt(widget.data.length);

    do {
      randomQuestionIndex1 = rng.nextInt(widget.data.length);
    } while (randomQuestionIndex1 == randomIndex);

    do {
      do {
        randomQuestionIndex2 = rng.nextInt(widget.data.length);
      } while (randomQuestionIndex2 == randomQuestionIndex1);
    } while (randomQuestionIndex2 == randomIndex);

    do {
      do {
        do {
          randomQuestionIndex3 = rng.nextInt(widget.data.length);
        } while (randomQuestionIndex3 == randomQuestionIndex2);
      } while (randomQuestionIndex3 == randomQuestionIndex1);
    } while (randomQuestionIndex3 == randomIndex);

    do {
      do {
        do {
          do {
            randomQuestionIndex4 = rng.nextInt(widget.data.length);
          } while (randomQuestionIndex4 == randomQuestionIndex3);
        } while (randomQuestionIndex4 == randomQuestionIndex2);
      } while (randomQuestionIndex4 == randomQuestionIndex1);
    } while (randomQuestionIndex4 == randomIndex);

    randomNumber = rng.nextInt(4);

    setState(() {
      if (randomNumber == 0) randomQuestionIndex1 = randomIndex;
      if (randomNumber == 1) randomQuestionIndex2 = randomIndex;
      if (randomNumber == 2) randomQuestionIndex3 = randomIndex;
      if (randomNumber == 3) randomQuestionIndex4 = randomIndex;
    });

    country =
        widget.quizzType == 'capital' ? widget.data[randomIndex].name : '?';
    capital = widget.quizzType == 'capital' ? '?' : '';

    void result(ind) {
      setState(() {
        widget.tap++;
        if (ind != randomIndex) {
          Navigator.pushNamed(context, '/countryCard',
              arguments: {'index': randomIndex, 'countryList': widget.data});
        } else {
          widget.score++;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => super.widget));
        }
      });
    }

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
            child: Text('${widget.score} / ${widget.tap}',
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 25)),
          ),
        ),
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              child: Center(
                  child: Column(children: [
            SizedBox(height: 5),
            Container(
              color: Theme.of(context).accentColor,
              child: Column(
                children: [
                  Container(
                    child: Text('$country',
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${widget.data[randomIndex].name}.JPG'))),
                    ),
                  ),
                  Container(
                    child: Text('$capital',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 310,
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Center(
                        child: Text(
                          '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex1].capital : widget.data[randomQuestionIndex1].name}',
                          style: TextStyle(
                              color: widget.quizzType == 'capital'
                                  ? Theme.of(context).primaryColor
                                  : Colors.black,
                              fontSize: 25),
                        ),
                      ),
                      onPressed: () {
                        result(randomQuestionIndex1);
                      }),
                ),
                Container(
                  width: 310,
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Center(
                        child: Text(
                          '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex2].capital : widget.data[randomQuestionIndex2].name}',
                          style: TextStyle(
                              color: widget.quizzType == 'capital'
                                  ? Theme.of(context).primaryColor
                                  : Colors.black,
                              fontSize: 25),
                        ),
                      ),
                      onPressed: () {
                        result(randomQuestionIndex2);
                      }),
                ),
                Container(
                  width: 310,
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Center(
                        child: Text(
                          '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex3].capital : widget.data[randomQuestionIndex3].name}',
                          style: TextStyle(
                              color: widget.quizzType == 'capital'
                                  ? Theme.of(context).primaryColor
                                  : Colors.black,
                              fontSize: 25),
                        ),
                      ),
                      onPressed: () {
                        result(randomQuestionIndex3);
                      }),
                ),
                Container(
                  width: 310,
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Center(
                        child: Text(
                          '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex4].capital : widget.data[randomQuestionIndex4].name}',
                          style: TextStyle(
                              color: widget.quizzType == 'capital'
                                  ? Theme.of(context).primaryColor
                                  : Colors.black,
                              fontSize: 25),
                        ),
                      ),
                      onPressed: () {
                        result(randomQuestionIndex4);
                      }),
                ),
              ],
            )
          ])))
        ])));
  }
}
