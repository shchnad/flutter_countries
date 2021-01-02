import 'package:flutter/material.dart';
import 'package:flutter_countries/country.dart';
import 'package:flutter_countries/countryCard.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: Text(
            '',
            style: TextStyle(letterSpacing: 0, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: countryList.length,
                itemBuilder: (context, index) {
                  return CountryCard(countryList[index], () {
                    setState(() {
                      Navigator.pushNamed(context, '/info', arguments: {
                        'index': index,
                        'countryList': countryList
                      });
                    });
                  });
                }),
          ),
        ));
  }
}
