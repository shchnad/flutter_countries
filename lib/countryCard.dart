import 'package:flutter/material.dart';
import 'package:flutter_countries/country.dart';

class CountryCard extends StatelessWidget {
  final Country item;
  final Function open;
  CountryCard(this.item, this.open);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          focusColor: Colors.lightBlue,
        onTap: open,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(item.name,
                  style: TextStyle(fontSize: 15,),
                ),
              ),
              Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/${item.name}.JPG')
                  )
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 80,
                child: Text(item.capital,
                  style: TextStyle(fontSize: 15, color: Colors.blue[900]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
