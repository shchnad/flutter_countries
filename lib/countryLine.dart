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
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        )],
        ),
        child: InkWell(
          onTap: openCountryCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    countryInList.name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      // fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                        image: AssetImage(
                            'assets/images/${countryInList.id}.JPG'))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    countryInList.capital,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      // fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
