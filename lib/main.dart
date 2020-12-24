import 'package:flutter/material.dart';
import 'package:flutter_countries/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    // '/list': (context) => List(),
  }
));

