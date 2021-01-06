import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/countryLine.dart';

class Countries extends StatefulWidget {
  final List<C> data;
  final String language;
  Countries({this.data, this.language});

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  void openCountryCard(index, countryList) {
    Navigator.pushNamed(context, '/countryCard',
        arguments: {'index': index, 'countryList': widget.data, 'language': widget.language});
  }

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: widget.data.length,
                itemBuilder: (context, index) {
                  return CountryLine(widget.data[index], () {
                    this.openCountryCard(index, widget.data);
                  });
                }),
          ),
        ));
  }
}
