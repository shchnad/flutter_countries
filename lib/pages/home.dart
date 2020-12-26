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
          'Un peu de GEO',
          style: TextStyle(
              letterSpacing: 0,
              color: Colors.white
            )
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
              height: 300,
               decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/world.jpg')
                )
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 80,
                  width: 120,
                  child: RaisedButton(
                    color: Colors.grey,
                    child: Text(
                      'apprendre',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),
                    ),
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
                  width: 120,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text(
                      'evaluer',
                      style: TextStyle(
                          fontSize: 15,
                      ),
                    ),
                    onPressed: (){},
                  )
              ),
            ],
          ),
        ]),
      ),
    );
  }
}