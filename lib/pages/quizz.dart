import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';

class Quizz extends StatefulWidget {
  final List<C> data;
  final String quizzType;
  final String language;

  Quizz({this.data, this.quizzType, this.language});

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
        widget.quizzType == 'capital' ? widget.data[randomIndex].name : '......';
    capital = widget.quizzType == 'capital' ? '......' : '';

    void result(ind) {
      setState(() {
        widget.tap++;
        if (ind != randomIndex) {
          Navigator.pushNamed(context, '/countryCard', arguments: {
            'index': randomIndex,
            'countryList': widget.data,
            'language': widget.language
          });
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
        // backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).accentColor,
          title: Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText('${widget.score} / ${widget.tap}',
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, {});
                  },
                  child: Container(
                    child: LayoutBuilder(builder: (context, constraint) {
                      return Icon(
                        Icons.clear,
                        // size: constraint.biggest.height,
                        size: 30,
                        color: Colors.black,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),

                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AutoSizeText('$country',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 30,
                              // fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${widget.data[randomIndex].id}.JPG'))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: AutoSizeText('$capital',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            // fontWeight: FontWeight.w700,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: AutoSizeText(
                            '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex1].capital : widget.data[randomQuestionIndex1].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: widget.quizzType == 'capital'
                                    ? Colors.red
                                    : Theme.of(context).primaryColor,
                                fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          result(randomQuestionIndex1);
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: AutoSizeText(
                            '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex2].capital : widget.data[randomQuestionIndex2].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: widget.quizzType == 'capital'
                                    ? Colors.red
                                    : Theme.of(context).primaryColor,
                                fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          result(randomQuestionIndex2);
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: AutoSizeText(
                            '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex3].capital : widget.data[randomQuestionIndex3].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: widget.quizzType == 'capital'
                                    ? Colors.red
                                    : Theme.of(context).primaryColor,
                                fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          result(randomQuestionIndex3);
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: AutoSizeText(
                            '${widget.quizzType == 'capital' ? widget.data[randomQuestionIndex4].capital : widget.data[randomQuestionIndex4].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: widget.quizzType == 'capital'
                                    ? Colors.red
                                    : Theme.of(context).primaryColor,
                                fontSize: 30),
                          ),
                        ),
                        onPressed: () {
                          result(randomQuestionIndex4);
                        }),
                  ),
                ),
              ],
            )
          ]))
        ])));
  }
}
