import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
          'GEOGRAPHY LESSON',
          style: TextStyle(
              letterSpacing: 0,
              color: Colors.black
            )
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
            SizedBox(
            height: 50,
            ),
            Row(children: [
               Container(
                height: 80,
                width: 100,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue[500],
                  child: Text('COUNTRIES', style: TextStyle(fontSize: 12),),
                  onPressed: (){},
                )
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 80,
                  width: 100,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue[500],
                    child: Text('CAPITALS', style: TextStyle(fontSize: 12),),
                    onPressed: (){},
                  )
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 80,
                  width: 100,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue[500],
                    child: Text('FLAGS', style: TextStyle(fontSize: 12),),
                    onPressed: (){},
                  )
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center
            ),
          SizedBox(
            height: 30,
          ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/world.jpg')
                )
              ),
            ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 80,
              width: 100,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.redAccent,
                child: Text('TEST', style: TextStyle(fontSize: 12),),
                onPressed: (){},
              )
          ),
        ]),
      ),
    );
  }
}