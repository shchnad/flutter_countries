import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/home.dart';
import 'package:flutter_countries/pages/countries.dart';
import 'package:flutter_countries/pages/countryCard.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData(
          // primaryColor: Colors.blue[700],
          primaryColor: Colors.red,
          accentColor: Colors.grey[300],
          // fontFamily: 'Anton',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/countries': (context) => Countries(),
          '/countryCard': (context) => CountryCard(),
        }));
