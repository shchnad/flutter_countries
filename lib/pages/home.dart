import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text('geo quizz',
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 30),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 300,
            width: 265,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/world.jpg'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 120,
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'apprendre',
                      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/countries');
                    },
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 60,
                  width: 120,
                  child: RaisedButton(
                    color: Colors.red,
                    child: Text(
                      'evaluer',
                      style: TextStyle(
                          fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/test');
                    },
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
