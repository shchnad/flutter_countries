import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/pages/quizz.dart';

class Home extends StatelessWidget {
  final List<Country> data = [
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
    Country('Brésil', 'Amérique du Sud', 'Brasilia'),
    Country('Brunei', 'Asie', 'Bandar Seri Begawan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'GEO',
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 30),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Quizz(data: data, quizzType: 'capital')));
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.public,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.school,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/world.jpg'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Quizz(data: data, quizzType: 'capital')));
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.emoji_transportation,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Quizz(data: data, quizzType: 'flag')));
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.emoji_flags,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
