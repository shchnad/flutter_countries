import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/countryLine.dart';

class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  List<Country> countryList = [
    Country('Afghanistan', 'Asie', 'Kaboul'),
    Country('Afrique du Sud', 'Afrique', 'Pretoria'),
    Country('Albanie', 'Europe', 'Tirana'),
    Country('Algérie', 'Afrique', 'Alger'),
    Country('Allemagne', 'Europe', 'Berlin'),
    Country('Andorre', 'Europe', 'Andorre-la-Vieille'),
    Country('Angola', 'Afrique', 'Luanda'),
    Country('Antigua-et-Barbuda', 'Océan Altantique', 'Saint Johns'),
    Country('Arabie saoudite', 'Asie', 'Riyad'),
    Country('Argentine', 'Amérique du Sud', 'Buenos Aires'),
    Country('Arménie', 'Asie', 'Erevan'),
    Country('Australie', 'Océanie', 'Canberra'),
    Country('Autriche', 'Europe', 'Vienne'),
    Country('Azerbaïdjan', 'Asie', 'Bakou'),
    Country('Bahamas', 'Océan Altantique', 'Nassau'),
    Country('Bahreïn', 'Asie', 'Manama'),
    Country('Bangladesh', 'Asie', 'Dacca'),
    Country('Barbade', 'Océan Altantique', 'Bridgetown'),
    Country('Belgique', 'Europe', 'Bruxelles'),
    Country('Belize', 'Amérique centrale', 'Belmopan'),
    Country('Bénin', 'Arique', 'Porto-Novo'),
    Country('Bhoutan', 'Asie', 'Thimphou'),
    Country('Biélorussie', 'Europe', 'Minsk'),
    Country('Birmanie', 'Asie', 'Naypyidaw'),
    Country('Bolivie', 'Amérique du Sud', 'La Paz'),
    Country('Bosnie-Herzégovine', 'Europe', 'Sarajevo'),
    Country('Botswana', 'Afrique', 'Gaborone'),
  ];

  void openCountryCard(index, countryList) {
    Navigator.pushNamed(
        context,
        '/countryCard',
        arguments: {'index': index, 'countryList': countryList});
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
                itemCount: countryList.length,
                itemBuilder: (context, index) {
                  return CountryLine(countryList[index], (){
                    this.openCountryCard(index, countryList);
                  });
                }),
          ),
        ));
  }
}
