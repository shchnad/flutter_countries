import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/home.dart';
import 'package:flutter_countries/pages/countries.dart';
import 'package:flutter_countries/pages/info.dart';
import 'package:flutter_countries/pages/test.dart';

void main() => runApp(MaterialApp(

        theme: ThemeData(
          primaryColor: Colors.blue[700],
          accentColor: Colors.grey[300],
          // fontFamily: 'Anton',
        ),

        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/countries': (context) => CountryList(),
          '/info': (context) => Info(),
          '/test': (context) => Test(),
        }));
