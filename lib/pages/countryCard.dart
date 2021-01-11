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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: AutoSizeText('${countryList[countryIndex].continent}',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                InkWell(
                  onTap: () {
                    launchURL(urlWiki);
                  },
                  child: Container(
                    width: (MediaQuery.of(context).size.width) / 8,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
        body: SafeArea(
          child: Container(
            color: Colors.grey[300],
            child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  child: AutoSizeText('${countryList[countryIndex].name}',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${countryList[countryIndex].id}.JPG'))),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  child: AutoSizeText('${countryList[countryIndex].capital}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/countryCard',
                              arguments: {
                                'language': language,
                                'index':
                                    countryIndex > 1 ? countryIndex - 1 : 0,
                                'countryList': countryList
                              });
                        },
                        child: Container(
                          width: (MediaQuery.of(context).size.width) / 5,
                          height: MediaQuery.of(context).size.height / 15,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor),
                          child: LayoutBuilder(builder: (context, constraint) {
                            return new Icon(
                              Icons.navigate_before,
                              size: constraint.biggest.height,
                              color: Colors.black,
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
                          height: MediaQuery.of(context).size.height / 15,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor),
                          child: LayoutBuilder(builder: (context, constraint) {
                            return new Icon(
                              Icons.clear,
                              size: constraint.biggest.height,
                              color: Colors.black,
                            );
                          }),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/countryCard',
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
                          height: MediaQuery.of(context).size.height / 15,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor),
                          child: LayoutBuilder(builder: (context, constraint) {
                            return new Icon(
                              Icons.navigate_next,
                              size: constraint.biggest.height,
                              color: Colors.black,
                            );
                          }),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ));
  }
}
