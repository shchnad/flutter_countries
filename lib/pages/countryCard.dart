import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class CountryCard extends StatefulWidget {
  @override
  _CountryCardState createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard> {
  Map data = {};
  String urlWiki;
  List countryList;
  int countryIndex;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    countryList = data['countryList'];
    countryIndex = data['index'];
    urlWiki = 'https://fr.wikipedia.org/wiki/${countryList[countryIndex].name}';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(''),
        ),
        body: SafeArea(
          child: InkWell(
            onTap: () {
              Navigator.pop(context, {});
            },
            child: Container(
              color: Colors.grey[300],
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child:
                                Text('${countryList[countryIndex].continent}',
                                    style: TextStyle(
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontSize: 20,
                                    )),
                          ),
                          IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.search),
                            tooltip: 'wiki',
                            onPressed: () {
                              launchURL(urlWiki);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text('${countryList[countryIndex].name}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 35)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${countryList[countryIndex].name}.JPG'))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text('${countryList[countryIndex].capital}',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 35)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 120,
                              color: Theme.of(context).accentColor,
                              child: IconButton(
                                  iconSize: 30,
                                  icon: Icon(Icons.navigate_before),
                                  // icon: Icon(Icons.keyboard_backspace),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/countryCard', arguments: {
                                      'index': countryIndex > 1
                                          ? countryIndex - 1
                                          : 0,
                                      'countryList': countryList
                                    });
                                  }),
                            ),
                            Container(
                              height: 60,
                              width: 120,
                              color: Theme.of(context).accentColor,
                              child: IconButton(
                                // icon: Icon(Icons.highlight_off),
                                icon: Icon(Icons.clear),
                                // icon: Icon(Icons.cancel),
                                // icon: Icon(Icons.tag_faces),
                                iconSize: 30,
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pop(context, {});
                                },
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 120,
                              color: Theme.of(context).accentColor,
                              child: IconButton(
                                  icon: Icon(Icons.navigate_next),
                                  // icon: Icon(Icons.arrow_right_alt),
                                  iconSize: 30,
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/countryCard',
                                        arguments: {
                                          'index': countryIndex <
                                                  (countryList.length - 2)
                                              ? countryIndex + 1
                                              : countryList.length - 1,
                                          'countryList': countryList
                                        });
                                  }),
                            ),
                          ]),
                    ]),
              ),
            ),
          ),
        ));
  }
}
