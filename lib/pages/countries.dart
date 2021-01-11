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
      if (continent == null ||
          continent == '...' ||
          element.continent == continent) {
        countriesList.add(element);
      }
    });

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(Icons.navigate_before, size: 40),
          //       onPressed: () {
          //         Navigator.pop(context, {});
          //       },
          //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //     );
          //   },
          // ),
          backgroundColor: Colors.black,
          title: Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: AutoSizeText(
                      '...',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 24,
                        height: MediaQuery.of(context).size.height / 15,
                        // child: LayoutBuilder(builder: (context, constraint) {
                        //   return Icon(Icons.public, size: constraint.biggest.height, color: Colors.white,);
                        // }),
                      ),
                    ),
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
                    width: (MediaQuery.of(context).size.width) / 10,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(builder: (context, constraint) {
                        return Icon(
                          Icons.clear,
                          size: constraint.biggest.height,
                          color: Colors.white,
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
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
