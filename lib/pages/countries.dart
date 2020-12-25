import 'package:flutter/material.dart';
import 'package:flutter_countries/country.dart';
import 'package:flutter_countries/countryCard.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {

List<Country> countryList = [
    Country ('Argentina', 'South America', 'Buenos Aires'),
    Country ('Brazil', 'South America', 'Brasilia'),
    Country ('Cambodia', 'Asia', 'Phnom Penh'),
    Country ('Canada', 'North America', 'Ottawa'),
    Country ('China', 'Asia', 'Peking'),
    Country ('Finnland', 'Europe', 'Helsinki'),
    Country ('France', 'Europe','Paris'),
    Country ('Germany', 'Europe','Berlin'),
    Country ('Ivory Coast', 'Africa', 'Yamoussoukro'),
    Country ('Japon', 'Asia', 'Tokyo'),
    Country ('Mali', 'Africa', 'Bamako'),
    Country ('Mongolia', 'Asia', 'UlaanBaatar'),
    Country ('Norway', 'Europe', 'Oslo'),
    Country ('Portugal','Europe', 'Lisbon'),
    Country ('Russia', 'Europe', 'Moscow'),
    Country ('Sweden','Europe', 'Stockholm'),
    Country ('Togo', 'Africa', 'Lome'),
    Country ('USA', 'North America', 'Washington DC'),
    Country ('Vietnam', 'Asia', 'Hanoi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: Center(
          child: Text(
            'LIST OF COUNTRIES',
            style: TextStyle(
            letterSpacing: 0,
            color: Colors.white
        )
      ),
    ),
    ),
      body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          // physics: BouncingScrollPhysics(),
          children: countryList.map( (item)=> CountryCard(
            item,
            (){setState( (){countryList.remove(item);} );}
          )
        ).toList()
      ),
      ),
    )
    );
  }
}
