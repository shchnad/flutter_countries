import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
          onTap: openCountryCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.7,
                child: AutoSizeText(
                  countryInList.name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/${countryInList.id}.JPG'))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: AutoSizeText(
                  countryInList.capital,
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
