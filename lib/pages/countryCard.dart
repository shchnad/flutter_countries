import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
  String language;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    countryList = data['countryList'];
    countryIndex = data['index'];
    language = data['language'];
    urlWiki =
        'https://$language.wikipedia.org/wiki/${countryList[countryIndex].name}';

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          AutoSizeText('${countryList[countryIndex].continent}',
                              style: TextStyle(
                                fontSize: 30,
                              )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchURL(urlWiki);
                    },
                    child: Container(
                      width: (MediaQuery.of(context).size.width) / 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LayoutBuilder(builder: (context, constraint) {
                          return Icon(
                            Icons.search,
                            size: constraint.biggest.height,
                            color: Colors.white,
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Center(
                  child: Column(children: [
                    Container(
                      color: Theme.of(context).accentColor,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText('${countryList[countryIndex].name}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${countryList[countryIndex].id}.JPG'))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AutoSizeText('${countryList[countryIndex].capital}',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 30,
                                  // fontWeight: FontWeight.w700,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                  ]))
            ]),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/countryCard',
                            arguments: {
                              'language': language,
                              'index': countryIndex > 1 ? countryIndex - 1 : 0,
                              'countryList': countryList
                            });
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 5,
                        child: LayoutBuilder(builder: (context, constraint) {
                          return new Icon(
                            Icons.navigate_before,
                            size: constraint.biggest.height,
                            color: Colors.white,
                          );
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, {});
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 5,
                        child: LayoutBuilder(builder: (context, constraint) {
                          return new Icon(
                            Icons.clear,
                            size: constraint.biggest.height,
                            color: Colors.white,
                          );
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/countryCard',
                            arguments: {
                              'language': language,
                              'index': countryIndex < (countryList.length - 2)
                                  ? countryIndex + 1
                                  : countryList.length - 1,
                              'countryList': countryList
                            });
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 5,
                        child: LayoutBuilder(builder: (context, constraint) {
                          return new Icon(
                            Icons.navigate_next,
                            size: constraint.biggest.height,
                            color: Colors.white,
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
