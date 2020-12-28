import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class Info extends StatelessWidget {
 Map data = {};
 String urlWiki = '';
 List countryList;
 int index;
  int indexBefore;
  int indexAfter;

 @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    countryList = data['countryList'];
    index = data['index'];
    urlWiki = 'https://fr.wikipedia.org/wiki/${countryList[index].name}';

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(''),
    ),
    body: SafeArea(
      child: InkWell(
        onTap: (){Navigator.pop(context, {});},
        child: Container(
        color: Colors.grey,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  child: Text(
                      '${countryList[index].name}',
                      style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontSize: 35,
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/${countryList[index].name}.JPG')
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(
                      '${countryList[index].capital}',
                      style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.blue[900],
                        fontSize: 35,
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(
                      'en ${countryList[index].continent}',
                      style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontSize: 20,
                      )
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'wiki',
                  onPressed: () {launchURL(urlWiki);},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.navigate_before),
                      tooltip: 'wiki',
                      onPressed: (){
                        Navigator.pushNamed(
                            context, '/info',
                            arguments: {
                              'index': index > 1 ? index - 1 : 0,
                              'countryList': countryList
                                    });}
                      ),
                    SizedBox(width: 180,),
                    IconButton(
                      icon: Icon(Icons.navigate_next),
                      tooltip: 'wiki',
                        onPressed: (){
                          Navigator.pushNamed(
                              context, '/info',
                              arguments: {
                                'index': index < (countryList.length - 2) ? index + 1 : countryList.length - 1,
                                'countryList': countryList
                              });}
                    ),
                ]
             ),
        ]),
    ),
    ),
      ),
    ));
  }
}