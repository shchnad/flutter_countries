import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/countryLine.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
  String world;

  void openCountryCard(index, countryList) {
    Navigator.pushNamed(context, '/countryCard', arguments: {
      'index': index,
      'countryList': countryList,
      'language': widget.language
    });
  }

  void showAll(language) {
    // world = '..........';
    if (language == 'en') world = 'whole world';
    if (language == 'fr') world = 'monde entier';
    if (language == 'de') world = 'ganze Welt';
    if (language == 'es') world = 'mundo entero';
    if (language == 'it') world = 'il mondo intero';
    if (language == 'pt') world = 'mundo inteiro';
    if (language == 'ru') world = 'весь мир';
  }

  @override
  Widget build(BuildContext context) {
    showAll(widget.language);
    continentsList = [world];
    widget.data.forEach((element) {
      if (!continentsList.contains(element.continent)) {
        continentsList.add(element.continent);
      }
    });

    continentsList = (continentsList..sort());

    List<C> countriesList = [];

    widget.data.forEach((element) {
      if (continent == null ||
          continent == world ||
          element.continent == continent) {
        countriesList.add(element);
      }
    });

    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          automaticallyImplyLeading: false,
          title: Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: Theme.of(context).accentColor,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    hint: Container(
                      child: LayoutBuilder(builder: (context, constraint) {
                        return Icon(
                          Icons.public,
                          color: Colors.black,
                          // size: constraint.biggest.height,
                          size: 30,
                        );
                      }),
                    ),
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
                        child: AutoSizeText(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        continent = value;
                      });
                    },
                    value: continent,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, {});
                  },
                  child: Container(
                    child: LayoutBuilder(builder: (context, constraint) {
                      return Icon(
                        Icons.clear,
                        // size: constraint.biggest.height,
                        size: 30,
                        color: Colors.black,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                  itemCount: countriesList.length,
                  itemBuilder: (context, index) {
                    return CountryLine(countriesList[index], () {
                      this.openCountryCard(index, countriesList);
                    });
                  }),
            ),
          ),
        ));
  }
}
