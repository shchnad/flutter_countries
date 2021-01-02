import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/quizz.dart';
import 'dart:math';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  void random() {
    var rng = new Random();
    for (var i = 0; i < 10; i++) {
      print(rng.nextInt(100));
    }
  }

  var _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    body:
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: Text(
            '',
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: TextField(
                    controller: _name,
                    autofocus: true,
                    maxLength: 15,
                    cursorColor: Theme.of(context).primaryColor,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        decoration: TextDecoration.none,
                        fontSize: 30),
                    decoration: new InputDecoration(
                      hintStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.none),
                      hintText: 'votre nom ?',
                      border: InputBorder.none,
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Theme.of(context).primaryColor, width: 2.0)),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
                      // ),
                    ),
                  ),
                  height: 80,
                  width: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      child: RaisedButton(
                          color: Colors.red,
                          child: Text(
                            'supprimez',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            _name.text = '';
                            this.random();
                          }),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 60,
                      width: 120,
                      child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'ok',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            _name.text = _name.text == '' ? 'Megaman' : _name.text;
                            var route = MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Quizz(value: _name.text));
                            Navigator.of(context).push(route);
                          }),
                    ),
                  ],
                ),
              ]),
        )));
  }
}
