import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/countryLine.dart';

class Countries extends StatefulWidget {
  final List<C> data;
  final String language;
  Countries({this.data, this.language});


  final List continentsFr = ['tout', 'Afrique','Amérique centrale','Amérique du Nord','Amérique du Sud','Asie','Europe','Proche-Orient','Océanie'];
  final List continentsEn = ['all', 'Africa', 'Central America', 'North America', 'South America', 'Asia', 'Europe', 'Middle East', 'Oceania'];
  final List continentsDe = ['alle', 'Afrika', 'Mittelamerika', 'Nordamerika', 'Südamerika', 'Asien', 'Europa', 'Mittlerer Osten', 'Ozeanien'];
  final List continentsEs = ['todo', 'África', 'América Central', 'América del Norte', 'América del Sur', 'Asia', 'Europa', 'Medio Oriente', 'Oceanía'];
  final List continentsIt = ['tutto', 'Africa', 'America centrale', 'America settentrionale', 'America meridionale', 'Asia', 'Europa', 'Medio Oriente', 'Oceania'];
  final List continentsPt = ['todos', 'África', 'América Central', 'América do Norte', 'América do Sul', 'Ásia', 'Europa', 'Médio Oriente', 'Oceania'];
  final List continentsRu = ['все', 'Африка', 'Центральная Америка', 'Северная Америка', 'Южная Америка', 'Азия', 'Европа', 'Ближний Восток', 'Океания'];

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {

  String continent;
  List continentsList;

  void openCountryCard(index, countryList) {
    Navigator.pushNamed(context, '/countryCard',
        arguments: {'index': index, 'countryList': countryList, 'language': widget.language});
  }

  @override
  Widget build(BuildContext context) {

      if (widget.language == 'fr') continentsList = widget.continentsFr;
      if (widget.language == 'en') continentsList = widget.continentsEn;
      if (widget.language == 'de') continentsList = widget.continentsDe;
      if (widget.language == 'es') continentsList = widget.continentsEs;
      if (widget.language == 'it') continentsList = widget.continentsIt;
      if (widget.language == 'pt') continentsList = widget.continentsPt;
      if (widget.language == 'ru') continentsList = widget.continentsRu;

      List <C> countriesList = [];

      widget.data.forEach((element) {
        if (continent == continentsList[0] || continent == null || element.continent == continent) {
          countriesList.add(element);
        }
      });


      return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              height: 60,
              decoration:
              BoxDecoration(color: Colors.black),
              child: Container(
                height: 40,
                width: 220,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    // hint: Text('?', style: TextStyle(color: Theme.of(context).accentColor,),),
                    style: TextStyle(color: Theme.of(context).accentColor, fontSize: 18),
                    icon: Icon(Icons.public, color: Colors.white),
                    iconSize: 30.0,
                    dropdownColor: Colors.black,
                    items: <String> ['${continentsList[0]}', '${continentsList[1]}', '${continentsList[2]}','${continentsList[3]}', '${continentsList[4]}', '${continentsList[5]}', '${continentsList[6]}', '${continentsList[7]}', '${continentsList[8]}']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value),);}).toList(),
                    onChanged: (value) {setState(() {continent = value;});},
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
                    return CountryLine(countriesList[index], () {this.openCountryCard(index, countriesList);});
                  }),
            ),
          ));
    }
  }

