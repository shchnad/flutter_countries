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
  String continent;
  List continentsList;

  void openCountryCard(index, countryList) {
    Navigator.pushNamed(context, '/countryCard', arguments: {
      'index': index,
      'countryList': countryList,
      'language': widget.language
    });
  }

  @override
  Widget build(BuildContext context) {

    continentsList = ['...'];
    widget.data.forEach((element) {
      if (!continentsList.contains(element.continent)) {
        continentsList.add(element.continent);
      }
    });

    continentsList = (continentsList..sort());

    List<C> countriesList = [];

    widget.data.forEach((element) {
      if (continent == null || continent == '...' || element.continent == continent) {
        countriesList.add(element);
      }
    });

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.black),
            child: Container(
              height: 40,
              width: 220,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  // hint: Text('?', style: TextStyle(color: Theme.of(context).accentColor,),),
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 18),
                  icon: Icon(Icons.public, color: Colors.white),
                  iconSize: 30.0,
                  dropdownColor: Colors.black,
                  items: <String>[
                    '${continentsList[0]}',
                    '${continentsList[1]}',
                    '${continentsList[2]}',
                    '${continentsList[3]}',
                    '${continentsList[4]}',
                    '${continentsList[5]}',
                    '${continentsList[6]}',
                    '${continentsList[7]}',
                    '${continentsList[8]}'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      continent = value;
                    });
                  },
                  value: continent,
                  isExpanded: true,
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: countriesList.length,
                itemBuilder: (context, index) {
                  return CountryLine(countriesList[index], () {
                    this.openCountryCard(index, countriesList);
                  });
                }),
          ),
        ));
  }
}
