import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/home.dart';
import 'package:flutter_countries/pages/countries.dart';
import 'package:flutter_countries/pages/info.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/countries': (context) => CountryList(),
    '/info': (context) => Info(),
  }
));

