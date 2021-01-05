import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/quizz.dart';
import 'package:flutter_countries/countryModel.dart';


class Test extends StatefulWidget {
  final List<Country> data;
  Test({this.data});
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('votre nom?', style: TextStyle(fontSize:18, color: Theme.of(context).accentColor),),
                Row(
                  children: [
                    Container(
                      child: TextField(
                        controller: _name,
                        autofocus: true,
                        maxLength: 10,
                        cursorColor: Theme.of(context).accentColor,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.none,
                            fontSize: 30
                        ),
                      ),
                      height: 80,
                      width: 280,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'effacer',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            _name.text = '';
                          }),
                    ),
                  ],
                ),


                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 120,
                      child: RaisedButton(
                          color: Colors.red,
                          child: Text(
                            'capitales',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
                            ),
                          ),
                          // onPressed: () {
                          //   _name.text = _name.text == '' ? '???' : _name.text;
                          //   var route = MaterialPageRoute(
                          //       builder: (BuildContext context) => Quizz(userName: _name.text, data: widget.data)
                          //   );
                          //   Navigator.of(context).push(route);
                          // }
                          ),
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      child: RaisedButton(
                          color: Colors.red,
                          child: Text(
                            'drapeaux',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
                            ),
                          ),
                          // onPressed: () {
                          //   _name.text = _name.text == '' ? '???' : _name.text;
                          //   var route = MaterialPageRoute(
                          //       builder: (BuildContext context) => Quizz(userName: _name.text, data: widget.data)
                          //   );
                          //   Navigator.of(context).push(route);
                          // }
                          ),
                    ),
                  ],
                ),
              ]),
        )));
  }
}
