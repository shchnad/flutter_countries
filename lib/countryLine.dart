import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';

class CountryLine extends StatelessWidget {
  final C countryInList;
  final Function openCountryCard;
  CountryLine(this.countryInList, this.openCountryCard);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          // focusColor: Colors.lightBlue,
          onTap: openCountryCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  countryInList.name,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/${countryInList.id}.JPG'))),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 80,
                child: Text(
                  countryInList.capital,
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
