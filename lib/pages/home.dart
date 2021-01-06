import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/pages/countries.dart';
import 'package:flutter_countries/pages/quizz.dart';

class Home extends StatefulWidget {
 final List<C> dataFr = [
    C(26, 'Afghanistan', 'Asie', 'Kaboul'),
    C(36, 'Afrique du Sud', 'Afrique', 'Pretoria'),
    C(105, 'Albanie', 'Europe', 'Tirana'),
    C(20, 'Algérie', 'Afrique', 'Alger'),
    C(21, 'Allemagne', 'Europe', 'Berlin'),
    C(183, 'Andorre', 'Europe', 'Andorre-la-Vieille'),
    C(35, 'Angola', 'Afrique', 'Luanda'),
    C(184, 'Antigua-et-Barbuda', 'Océan Altantique', 'Saint Johns'),
    C(19, 'Arabie saoudite', 'Asie', 'Riyad'),
    C(29, 'Argentine', 'Amérique du Sud', 'Buenos Aires'),
    C(76, 'Arménie', 'Asie', 'Erevan'),
    C(138, 'Australie', 'Océanie', 'Canberra'),
    C(46, 'Autriche', 'Europe', 'Vienne'),
    C(39, 'Azerbaïdjan', 'Asie', 'Bakou'),
    C(149, 'Bahamas', 'Océan Altantique', 'Nassau'),
    C(155, 'Bahreïn', 'Asie', 'Manama'),
    C(7, 'Bangladesh', 'Asie', 'Dacca'),
    C(161, 'Barbade', 'Océan Altantique', 'Bridgetown'),
    C(74, 'Belgique', 'Europe', 'Bruxelles'),
    C(186, 'Belize', 'Amérique centrale', 'Belmopan'),
    C(151, 'Bénin', 'Arique', 'Porto-Novo'),
    C(163, 'Bhoutan', 'Asie', 'Thimphou'),
    C(50, 'Biélorussie', 'Europe', 'Minsk'),
    C(87, 'Birmanie (Myanmar)', 'Asie', 'Naypyidaw'),
    C(92, 'Bolivie', 'Amérique du Sud', 'La Paz'),
    C(135, 'Bosnie-Herzégovine', 'Europe', 'Sarajevo'),
    C(150, 'Botswana', 'Afrique', 'Gaborone'),
    C(33, 'Brésil', 'Amérique du Sud', 'Brasilia'),
    C(181, 'Brunei', 'Asie', 'Bandar Seri Begawan'),
    C(134, 'Bulgarie', 'Europe', 'Sofia'),
    C(81, 'Burkina Faso', 'Afrique', 'Ouagadougou'),
    C(73, 'Burundi', 'Afrique', 'Gitega'),
    C(42, 'Cambodge', 'Asie', 'Phnom Penh'),
    C(54, 'Cameroun', 'Afrique', 'Yaoundé'),
    C(91, 'Canada', 'Amérique du Nord', 'Ottawa'),
    C(158, 'Cap-Vert', 'Océan Altantique', 'Praia'),
    C(110, 'République centrafricaine', 'Afrique', 'Bangui'),
    C(18, 'Chili', 'Amérique du Sud', 'Santiago'),
    C(1, 'Chine', 'Asie', 'Pékin'),
    C(144, 'Chypre', 'Asie', 'Nicosie'),
    C(13, 'Colombie', 'Amérique du Sud', 'Bogota'),
    C(169, 'Comores', 'Océan Indien', 'Moroni'),
    C(75, 'Congo', 'Afrique', 'Brazzaville'),
    C(3, 'République démocratique du Congo', 'Afrique', 'Kinshasa'),
    C(192, 'Îles Cook', 'Océan Pacifique', 'Avarua'),
    C(25, 'Corée du Nord', 'Asie', 'Pyongyang'),
    C(5, 'Corée du Sud', 'Asie', 'Séoul'),
    C(139, 'Costa Rica', 'Amérique centrale', 'San José'),
    C(130, 'Côte d Ivoire', 'Afrique', 'Yamoussoukro'),
    C(99, 'Croatie', 'Europe', 'Zagreb'),
    C(41, 'Cuba', 'Océan Altantique', 'La Havane'),
    C(128, 'Danemark', 'Europe', 'Copenhague'),
    C(129, 'Djibouti', 'Afrique', 'Djibouti'),
    C(71, 'République dominicaine', 'Océan Altantique','Saint-Domingue'),
    C(187, 'Dominique', 'Océan Altantique', 'Roseau'),
    C(14, 'Égypte', 'Afrique', 'Le Caire'),
    C(119, 'Émirats arabes unis', 'Moyen-Orient', 'Abou Dhabi'),
    C(57, 'Équateur', 'Amérique du Sud', 'Quito'),
    C(123, 'Érythrée', 'Afrique', 'Asmara'),
    C(24, 'Espagne', 'Europe', 'Madrid'),
    C(133, 'Estonie', 'Europe', 'Tallinn'),
    C(116, 'États-Unis', 'Amérique du Nord', 'Washington'),
    C(28, 'Éthiopie', 'Afrique', 'Addis-Abeba'),
  ];


 final List<C> dataEn = [
   C (26, 'Afghanistan', 'Asia', 'Kabul'),
   C (36, 'South Africa', 'Africa', 'Pretoria'),
   C (105, 'Albania', 'Europe', 'Tirana'),
   C (20, 'Algeria', 'Africa', 'Algiers'),
   C (21, 'Germany', 'Europe', 'Berlin'),
   C (183, 'Andorra', 'Europe', 'Andorra la Vella'),
   C (35, 'Angola', 'Africa', 'Luanda'),
   C (184, 'Antigua and Barbuda', 'Altantic Ocean', 'Saint Johns'),
   C (19, 'Saudi Arabia', 'Asia', 'Riyadh'),
   C (29, 'Argentina', 'South America', 'Buenos Aires'),
   C (76, 'Armenia', 'Asia', 'Yerevan'),
   C (138, 'Australia', 'Oceania', 'Canberra'),
   C (46, 'Austria', 'Europe', 'Vienna'),
   C (39, 'Azerbaijan', 'Asia', 'Baku'),
   C (149, 'Bahamas', 'Altantic Ocean', 'Nassau'),
   C (155, 'Bahrain', 'Asia', 'Manama'),
   C (7, 'Bangladesh', 'Asia', 'Dhaka'),
   C (161, 'Barbados', 'Altantic Ocean', 'Bridgetown'),
   C (74, 'Belgium', 'Europe', 'Brussels'),
   C (186, 'Belize', 'Central America', 'Belmopan'),
   C (151, 'Benin', 'Arique', 'Porto-Novo'),
   C (163, 'Bhutan', 'Asia', 'Thimphu'),
   C (50, 'Belarus', 'Europe', 'Minsk'),
   C (87, 'Burma (Myanmar)', 'Asia', 'Naypyidaw'),
   C (92, 'Bolivia', 'South America', 'La Paz'),
   C (135, 'Bosnia and Herzegovina', 'Europe', 'Sarajevo'),
   C (150, 'Botswana', 'Africa', 'Gaborone'),
   C (33, 'Brazil', 'South America', 'Brasilia'),
   C (181, 'Brunei', 'Asia', 'Bandar Seri Begawan'),
   C (134, 'Bulgaria', 'Europe', 'Sofia'),
   C (81, 'Burkina Faso', 'Africa', 'Ouagadougou'),
   C (73, 'Burundi', 'Africa', 'Gitega'),
   C (42, 'Cambodia', 'Asia', 'Phnom Penh'),
   C (54, 'Cameroon', 'Africa', 'Yaoundé'),
   C (91, 'Canada', 'North America', 'Ottawa'),
   C (158, 'Cape Verde', 'Altantic Ocean', 'Praia'),
   C (110, 'Central African Republic', 'Africa', 'Bangui'),
   C (18, 'Chile', 'South America', 'Santiago'),
   C (1, 'China', 'Asia', 'Beijing'),
   C (144, 'Cyprus', 'Asia', 'Nicosia'),
   C (13, 'Colombia', 'South America', 'Bogota'),
   C (169, 'Comoros', 'Indian Ocean', 'Moroni'),
   C (75, 'Congo', 'Africa', 'Brazzaville'),
   C (3, 'Democratic Republic of Congo', 'Africa', 'Kinshasa'),
   C (192, 'Cook Islands', 'Pacific Ocean', 'Avarua'),
   C (25, 'North Korea', 'Asia', 'Pyongyang'),
   C (5, 'South Korea', 'Asia', 'Seoul'),
   C (139, 'Costa Rica', 'Central America', 'San José'),
   C (130, 'Côte d Ivoire', 'Africa', 'Yamoussoukro'),
   C (99, 'Croatia', 'Europe', 'Zagreb'),
   C (41, 'Cuba', 'Altantic Ocean', 'Havana'),
   C (128, 'Denmark', 'Europe', 'Copenhagen'),
   C (129, 'Djibouti', 'Africa', 'Djibouti'),
   C (71, 'Dominican Republic', 'Altantic Ocean', 'Santo Domingo'),
   C (187, 'Dominica', 'Altantic Ocean', 'Roseau'),
   C (14, 'Egypt', 'Africa', 'Cairo'),
   C (119, 'United Arab Emirates', 'Middle East', 'Abu Dhabi'),
   C (57, 'Ecuador', 'South America', 'Quito'),
   C (123, 'Eritrea', 'Africa', 'Asmara'),
   C (24, 'Spain', 'Europe', 'Madrid'),
   C (133, 'Estonia', 'Europe', 'Tallinn'),
   C (116, 'United States', 'North America', 'Washington'),
   C (28, 'Ethiopia', 'Africa', 'Addis Ababa'),
 ];

 final List<C> dataDe = [
 C (26, "Afghanistan", "Asien", "Kabul"),
 C (36, "Südafrika", "Afrika", "Pretoria"),
 C (105, "Albanien", "Europa", "Tirana"),
 C (20, "Algerien", "Afrika", "Algier"),
 C (21, "Deutschland", "Europa", "Berlin"),
 C (183, "Andorra", "Europa", "Andorra la Vella"),
 C (35, "Angola", "Afrika", "Luanda"),
 C (184, "Antigua und Barbuda", "Altantischer Ozean", "Saint Johns"),
 C (19, "Saudi-Arabien", "Asien", "Riad"),
 C (29, "Argentinien", "Südamerika", "Buenos Aires"),
 C (76, "Armenien", "Asien", "Eriwan"),
 C (138, "Australien", "Ozeanien", "Canberra"),
 C (46, "Österreich", "Europa", "Wien"),
 C (39, "Aserbaidschan", "Asien", "Baku"),
 C (149, "Bahamas", "Altantischer Ozean", "Nassau"),
 C (155, "Bahrain", "Asien", "Manama"),
 C (7, "Bangladesch", "Asien", "Dhaka"),
 C (161, "Barbados", "Altantischer Ozean", "Bridgetown"),
 C (74, "Belgien", "Europa", "Brüssel"),
 C (186, "Belize", "Mittelamerika", "Belmopan"),
 C (151, "Benin", "Arique", "Porto-Novo"),
 C (163, "Bhutan", "Asien", "Thimphu"),
 C (50, "Weißrussland", "Europa", "Minsk"),
 C (87, "Burma (Myanmar)", "Asien", "Naypyidaw"),
 C (92, "Bolivien", "Südamerika", "La Paz"),
 C (135, "Bosnien und Herzegowina", "Europa", "Sarajevo"),
 C (150, "Botswana", "Afrika", "Gaborone"),
 C (33, "Brasilien", "Südamerika", "Brasilia"),
 C (181, "Brunei", "Asien", "Bandar Seri Begawan"),
 C (134, "Bulgarien", "Europa", "Sofia"),
 C (81, "Burkina Faso", "Afrika", "Ouagadougou"),
 C (73, "Burundi", "Afrika", "Gitega"),
 C (42, "Kambodscha", "Asien", "Phnom Penh"),
 C (54, "Kamerun", "Afrika", "Yaoundé"),
 C (91, "Kanada", "Nordamerika", "Ottawa"),
 C (158, "Kap Verde", "Altantischer Ozean", "Praia"),
 C (110, "Zentralafrikanische Republik", "Afrika", "Bangui"),
 C (18, "Chile", "Südamerika", "Santiago"),
 C (1, "China", "Asien", "Peking"),
 C (144, "Zypern", "Asien", "Nikosia"),
 C (13, "Kolumbien", "Südamerika", "Bogota"),
 C (169, "Komoren", "Indischer Ozean", "Moroni"),
 C (75, "Kongo", "Afrika", "Brazzaville"),
 C (3, "Demokratische Republik Kongo", "Afrika", "Kinshasa"),
 C (192, "Cookinseln", "Pazifik", "Avarua"),
 C (25, "Nordkorea", "Asien", "Pjöngjang"),
 C (5, "Südkorea", "Asien", "Seoul"),
 C (139, "Costa Rica", "Mittelamerika", "San José"),
 C (130, "Côte d Ivoire", "Afrika", "Yamoussoukro"),
 C (99, "Kroatien", "Europa", "Zagreb"),
 C (41, "Kuba", "Altantischer Ozean", "Havanna"),
 C (128, "Dänemark", "Europa", "Kopenhagen"),
 C (129, "Dschibuti", "Afrika", "Dschibuti"),
 C (71, "Dominikanische Republik", "Altantischer Ozean", "Santo Domingo"),
 C (187, "Dominica", "Altantischer Ozean", "Roseau"),
 C (14, "Ägypten", "Afrika", "Kairo"),
 C (119, "Vereinigte Arabische Emirate", "Naher Osten", "Abu Dhabi"),
 C (57, "Ecuador", "Südamerika", "Quito"),
 C (123, "Eritrea", "Afrika", "Asmara"),
 C (24, "Spanien", "Europa", "Madrid"),
 C (133, "Estland", "Europa", "Tallinn"),
 C (116, "USA", "Nordamerika", "Washington"),
 C (28, "Äthiopien", "Afrika", "Addis Abeba"),
 ];

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  String language = 'fr';
  List<C> data;

  @override
  Widget build(BuildContext context) {
    if (language == 'fr') data = widget.dataFr;
    if (language == 'en') data = widget.dataEn;
    if (language == 'de') data = widget.dataDe;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              'GEO',
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 30),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [

          Container(
            padding: EdgeInsets.all(20.0),
            child: DropdownButton(
                value: language,
                items: [
                  DropdownMenuItem(
                    child: Text('Français'),
                    value: 'fr',
                  ),
                  DropdownMenuItem(
                    child: Text('English'),
                    value: 'en',
                  ),
                  DropdownMenuItem(
                      child: Text('Русский'),
                      value: 'ru'
                  ),
                  DropdownMenuItem(
                      child: Text('Deutsch'),
                      value: 'de'
                  )
                ],
                onChanged: (value) {
                  setState(() {language = value;});
                }),
          ),
          
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.public,
                    color: Colors.black,
                    size: 30,
                  ),

                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Countries(data: data, language: language)));},
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.school,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/world.jpg'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Quizz(data: data, quizzType: 'capital', language: language)));
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.emoji_transportation,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Quizz(data: data, quizzType: 'flag', language: language)));
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.emoji_flags,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
