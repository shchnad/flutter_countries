import 'package:flutter/material.dart';
import 'package:flutter_countries/country.dart';

class CountryCard extends StatelessWidget {
  final Country item;
  final Function delete;
  CountryCard(this.item, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 150,
              child: Text(item.name,
                style: TextStyle(fontSize: 20,),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 150,
              child: Text(
                  item.capital,
                  style: TextStyle(fontSize: 20, color: Colors.blue)
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/${item.name}.JPG')
                )
              ),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
