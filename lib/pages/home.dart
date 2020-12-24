import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Center(
          child: Text('GEOGRAPHY LESSON',
          style: TextStyle(
              letterSpacing: 5)),
        )
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
                  color: Colors.blue[300],
                  child: Text('countries', style: TextStyle(fontSize: 16),),
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
                    child: Text('capitals', style: TextStyle(fontSize: 16),),
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
                    color: Colors.blue[700],
                    child: Text('flags', style: TextStyle(fontSize: 16),),
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
                child: Text('test', style: TextStyle(fontSize: 16),),
                onPressed: (){},
              )
          ),
        ]),
      ),
    );
  }
}