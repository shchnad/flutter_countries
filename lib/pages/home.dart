import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
          'GEOGRAPHY LESSON',
          style: TextStyle(
              letterSpacing: 0,
              color: Colors.white
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
                  color: Colors.white,
                  child: Text('COUNTRIES', style: TextStyle(fontSize: 12),),
                  onPressed: (){
                    Navigator.pushNamed(context, '/countries');
                  },
                )
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 80,
                  width: 100,
                  child: RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
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
                    textColor: Colors.green,
                    color: Colors.white,
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
              width: 340,
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
                color: Colors.red,
                child: Text('TEST', style: TextStyle(fontSize: 12),),
                onPressed: (){},
              )
          ),
        ]),
      ),
    );
  }
}