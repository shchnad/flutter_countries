import 'package:flutter/material.dart';
import 'package:flutter_countries/countryModel.dart';
import 'package:flutter_countries/pages/countries.dart';
import 'package:flutter_countries/pages/quizz.dart';

class Home extends StatefulWidget {

 final List<C> dataFr = [
    C(26, 'Afghanistan', 'Proche-Orient', 'Kaboul'),
    C(36, 'Afrique du Sud', 'Afrique', 'Pretoria'),
    C(105, 'Albanie', 'Europe', 'Tirana'),
    C(20, 'Algérie', 'Afrique', 'Alger'),
    C(21, 'Allemagne', 'Europe', 'Berlin'),
    C(183, 'Andorre', 'Europe', 'Andorre-la-Vieille'),
    C(35, 'Angola', 'Afrique', 'Luanda'),
    C(184, 'Antigua-et-Barbuda', 'Océanie', 'Saint Johns'),
    C(19, 'Arabie saoudite', 'Proche-Orient', 'Riyad'),
    C(29, 'Argentine', 'Amérique du Sud', 'Buenos Aires'),
    C(76, 'Arménie', 'Proche-Orient', 'Erevan'),
    C(138, 'Australie', 'Océanie', 'Canberra'),
    C(46, 'Autriche', 'Europe', 'Vienne'),
    C(39, 'Azerbaïdjan', 'Proche-Orient', 'Bakou'),
    C(149, 'Bahamas', 'Océanie', 'Nassau'),
    C(155, 'Bahreïn', 'Proche-Orient', 'Manama'),
    C(7, 'Bangladesh', 'Asie', 'Dacca'),
    C(161, 'Barbade', 'Océanie', 'Bridgetown'),
    C(74, 'Belgique', 'Europe', 'Bruxelles'),
    C(186, 'Belize', 'Amérique centrale', 'Belmopan'),
    C(151, 'Bénin', 'Afrique', 'Porto-Novo'),
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
    C(158, 'Cap-Vert', 'Océanie', 'Praia'),
    C(110, 'République centrafricaine', 'Afrique', 'Bangui'),
    C(18, 'Chili', 'Amérique du Sud', 'Santiago'),
    C(1, 'Chine', 'Asie', 'Pékin'),
    C(144, 'Chypre', 'Proche-Orient', 'Nicosie'),
    C(13, 'Colombie', 'Amérique du Sud', 'Bogota'),
    C(169, 'Comores', 'Océanie', 'Moroni'),
    C(75, 'Congo', 'Afrique', 'Brazzaville'),
    C(3, 'République démocratique du Congo', 'Afrique', 'Kinshasa'),
    C(192, 'Îles Cook', 'Océanie', 'Avarua'),
    C(25, 'Corée du Nord', 'Asie', 'Pyongyang'),
    C(5, 'Corée du Sud', 'Asie', 'Séoul'),
    C(139, 'Costa Rica', 'Amérique centrale', 'San José'),
    C(130, 'Côte dʻIvoire', 'Afrique', 'Yamoussoukro'),
    C(99, 'Croatie', 'Europe', 'Zagreb'),
    C(41, 'Cuba', 'Océanie', 'La Havane'),
    C(128, 'Danemark', 'Europe', 'Copenhague'),
    C(129, 'Djibouti', 'Afrique', 'Djibouti'),
    C(71, 'République dominicaine', 'Océanie','Saint-Domingue'),
    C(187, 'Dominique', 'Océanie', 'Roseau'),
    C(14, 'Égypte', 'Proche-Orient', 'Le Caire'),
    C(119, 'Émirats arabes unis', 'Proche-Orient', 'Abou Dhabi'),
    C(57, 'Équateur', 'Amérique du Sud', 'Quito'),
    C(123, 'Érythrée', 'Afrique', 'Asmara'),
    C(24, 'Espagne', 'Europe', 'Madrid'),
    C(133, 'Estonie', 'Europe', 'Tallinn'),
    C(116, 'États-Unis', 'Amérique du Nord', 'Washington'),
    C(28, 'Éthiopie', 'Afrique', 'Addis-Abeba'),
   C(165, 'Fidji', 'Océanie', 'Suva'),
   C(118, 'Finlande', 'Europe', 'Helsinki'),
   C(37, 'France', 'Europe', 'Paris'),
   C(122, 'Gabon', 'Afrique', 'Libreville'),
   C(178, 'Gambie', 'Afrique', 'Banjul'),
   C(79, 'Géorgie', 'Proche-Orient', 'Tbilissi'),
   C(53, 'Ghana', 'Afrique', 'Accra'),
   C(111, 'Grèce', 'Europe', 'Athènes'),
   C(190, 'Grenade', 'Océanie', 'Saint-Georges'),
   C(84, 'Guatemala', 'Amérique centrale', 'Guatemala'),
   C(61, 'Guinée', 'Afrique', 'Conakry'),
   C(131, 'Guinée-Bissau', 'Afrique', 'Bissau'),
   C(164, 'Guinée équatoriale', 'Afrique', 'Malabo'),
   C(157, 'Guyana', 'Afrique', 'Georgetown'),
   C(67, 'Haïti', 'Océanie', 'Port-au-Prince'),
   C(109, 'Honduras', 'Amérique centrale', 'Tegucigalpa'),
   C(48, 'Hongrie', 'Europe', 'Budapest'),
   C(148, 'Inde', 'Asie', 'New Delhi'),
   C(6, 'Indonésie', 'Asie', 'Jakarta'),
   C(15, 'Iraq', 'Proche-Orient', 'Bagdad'),
   C(12, 'Iran', 'Proche-Orient', 'Téhéran'),
   C(82, 'Ireland', 'Europe', 'Dublin	'),
   C(160, 'Islande', 'Europe', 'Reykjavík'),
   C(90, 'Israel', 'Proche-Orient', 'Jerusalem'),
   C(30, 'Italie', 'Europe', 'Rome'),
   C(115, 'Jamaïque', 'Océanie', 'Kingston'),
   C(2, 'Japon', 'Asie', 'Tokyo'),
   C(34, 'Jordanie', 'Proche-Orient', 'Amman'),
   C(94, 'Kazakhstan', 'Asie', 'Noursoultan'),
   C(27, 'Kenya', 'Afrique', 'Nairobi'),
   C(93, 'Kirghizstan', 'Asie', 'Bichkek'),
   C(179, 'Kiribati', 'Océanie', 'Tarawa'),
   C(152, 'Kosovo', 'Europe', 'Pristina'),
   C(69, 'Koweït', 'Proche-Orient', 'Koweït'),
   C(141, 'Laos', 'Asie', 'Vientiane'),
   C(143, 'Lesotho', 'Afrique', 'Maseru	'),
   C(114, 'Lettonie', 'Europe', 'Riga	'),
   C(56, 'Liban', 'Proche-Orient', 'Beyrouth'),
   C(83, 'Liberia', 'Afrique', 'Monrovia'),
   C(68, 'Libye', 'Afrique', 'Tripoli'),
   C(193, 'Liechtenstein', 'Europe', 'Vaduz'),
   C(121, 'Lituanie', 'Europe', 'Vilnius'),
   C(167, 'Luxembourg', 'Europe', 'Luxembourg'),
   C(127, 'Macédoine', 'Europe', 'Skopje'),
   C(55, 'Madagascar', 'Afrique', 'Antananarivo'),
   C(62, 'Malaisie', 'Asie', 'Kuala Lumpur'),
   C(89, 'Malawi', 'Afrique', 'Lilongwe'),
   C(162, 'Maldives', 'Océanie', 'Malé'),
   C(65, 'Mali', 'Afrique', 'Bamako'),
   C(45, 'Maroc', 'Afrique', 'Rabat'),
   C(182, 'Îles Marshall', 'Océanie', 'Delap-Uliga-Darrit'),
   C(154, 'Maurice', 'Océanie', 'Port-Louis'),
   C(112, 'Mauritanie', 'Afrique', 'Nouakchott'),
   C(8, 'Mexique', 'Amérique du Nord', 'Mexico'),
   C(189, 'Micronésie', 'Océanie', 'Palikir'),
   C(102, 'Moldavie', 'Europe', 'Chișinău'),
   C(177, 'Monaco', 'Europe', 'Monte-Carlo'),
   C(88, 'Mongolie', 'Asie', 'Oulan-Bator'),
   C(153, 'Monténégro', 'Europe', 'Podgorica'),
   C(77, 'Mozambique', 'Afrique', 'Maputo'),
   C(147, 'Namibie', 'Afrique', 'Windhoek'),
   C(197, 'Nauru', 'Océanie', 'Yaren'),
   C(97, 'Népal', 'Asie', 'Katmandou'),
   C(86, 'Nicaragua', 'Amérique centrale', 'Managua'),
   C(101, 'Niger', 'Afrique', 'Niamey'),
   C(104, 'Nigeria', 'Afrique', 'Abuja'),
   C(117, 'Norvège', 'Europe', 'Oslo'),
   C(136, 'Nouvelle-Zélande', 'Océanie', 'Wellington'),
   C(100, 'Oman', 'Proche-Orient', 'Mascate'),
   C(52, 'Ouganda', 'Afrique', 'Kampala'),
   C(38, 'Ouzbékistan', 'Asie', 'Tachkent'),
   C(85, 'Pakistan', 'Asie', 'Islamabad'),
   C(200, 'Palaos', 'Océanie', 'Melekeok'),
   C(96, 'Panama', 'Amérique centrale', 'Panama'),
   C(140, 'Papouasie-Nouvelle-Guinée', 'Océanie', 'Port Moresby'),
   C(126, 'Paraguay', 'Amérique du Sud', 'Asunción'),
   C(98, 'Pays-Bas', 'Europe', 'Amsterdam'),
   C(10, 'Pérou', 'Amérique du Sud', 'Lima'),
   C(51, 'Philippines', 'Asie', 'Manille'),
   C(49, 'Pologne', 'Europe', 'Varsovie'),
   C(124, 'Portugal', 'Europe', 'Lisbonne'),
   C(59, 'Qatar', 'Proche-Orient', 'Doha'),
   C(43, 'Roumanie', 'Europe', 'Bucarest'),
   C(9, 'Royaume-Uni', 'Europe', 'Londres'),
   C(4, 'Russie', 'Europe', 'Moscou'),
   C(113, 'Rwanda', 'Afrique', 'Kigali'),
   C(188, 'Saint-Christophe-et-Niévès', 'Océanie', 'Basseterre'),
   C(194, 'Saint-Marin', 'Europe', 'Saint-Marin'),
   C(174, 'Saint-Vincent-et-les-Grenadines', 'Océanie', 'Kingstown'),
   C(168, 'Sainte-Lucie', 'Océanie', 'Castries'),
   C(170, 'Salomon', 'Océanie', 'Honiara'),
   C(125, 'El Salvador', 'Amérique centrale', 'San Salvador'),
   C(175, 'Samoa', 'Océanie', 'Apia'),
   C(172, 'São Tomé-et-Principe', 'Océanie', 'São Tome'),
   C(80, 'Sénégal', 'Afrique', 'Dakar'),
   C(70, 'Serbie', 'Europe', 'Belgrade'),
   C(180, 'Seychelles', 'Océanie', 'Victoria'),
   C(78, 'Sierra Leone', 'Afrique', 'Freetown'),
   C(16, 'Singapour', 'Asie', 'Singapour'),
   C(132, 'Slovaquie', 'Europe', 'Bratislava'),
   C(145, 'Slovénie', 'Europe', 'Ljubljana'),
   C(72, 'Somalie', 'Afrique', 'Mogadiscio'),
   C(47, 'Soudan', 'Afrique', 'Khartoum'),
   C(137, 'Sud-Soudan', 'Afrique', 'Djouba'),
   C(159, 'Sri Lanka', 'Asie', 'Sri Jayawardenapura Kotte'),
   C(40, 'Suède', 'Europe', 'Stockholm'),
   C(156, 'Suisse', 'Europe', 'Berne'),
   C(146, 'Suriname', 'Amérique du Sud', 'Paramaribo'),
   C(166, 'Swaziland', 'Afrique', 'Mbabane'),
   C(22, 'Syrie', 'Proche-Orient', 'Damas'),
   C(120, 'Tadjikistan', 'Asie', 'Douchanbé'),
   C(32, 'Taïwan', 'Asie', 'Taipei'),
   C(142, 'Tanzanie', 'Afrique', 'Dodoma'),
   C(108, 'Tchad', 'Afrique', 'NʻDjaména'),
   C(66, 'République tchèque', 'Europe', 'Prague'),
   C(11, 'Thaïlande', 'Asie', 'Bangkok'),
   C(171, 'Timor-Oriental', 'Asie', 'Dili'),
   C(95, 'Togo', 'Afrique', 'Lomé'),
   C(185, 'Tonga', 'Océanie', 'Nukuʻalofa'),
   C(173, 'Trinidad-et-Tobago', 'Océanie', 'Port dʻEspagne'),
   C(106, 'Tunisie', 'Afrique', 'Tunis'),
   C(107, 'Turkménistan', 'Asie', 'Achgabat'),
   C(17, 'Turquie', 'Proche-Orient', 'Ankara'),
   C(195, 'Tuvalu', 'Océanie', 'Funafuti'),
   C(31, 'Ukraine', 'Europe', 'Kiev'),
   C(63, 'Uruguay', 'Amérique du Sud', 'Montevideo'),
   C(176, 'Vanuatu', 'Océanie', 'Port Vila'),
   C(198, 'Vatican', 'Europe', 'Vatican'),
   C(44, 'Venezuela', 'Amérique du Sud', 'Caracas'),
   C(23, 'Viêt Nam', 'Asie', 'Hanoï'),
   C(60, 'Yémen', 'Proche-Orient', 'Sanaa'),
   C(64, 'Zambie', 'Afrique', 'Lusaka'),
   C(58, 'Zimbabwe', 'Afrique', 'Harare'),
  ];

 final List<C> dataEn = [
   C (26, 'Afghanistan', 'Middle East', 'Kabul'),
   C (36, 'South Africa', 'Africa', 'Pretoria'),
   C (105, 'Albania', 'Europe', 'Tirana'),
   C (20, 'Algeria', 'Africa', 'Algiers'),
   C (21, 'Germany', 'Europe', 'Berlin'),
   C (183, 'Andorra', 'Europe', 'Andorra la Vella'),
   C (35, 'Angola', 'Africa', 'Luanda'),
   C (184, 'Antigua and Barbuda', 'Oceania', 'Saint Johns'),
   C (19, 'Saudi Arabia', 'Middle East', 'Riyadh'),
   C (29, 'Argentina', 'South America', 'Buenos Aires'),
   C (76, 'Armenia', 'Middle East', 'Yerevan'),
   C (138, 'Australia', 'Oceania', 'Canberra'),
   C (46, 'Austria', 'Europe', 'Vienna'),
   C (39, 'Azerbaijan', 'Middle East', 'Baku'),
   C (149, 'Bahamas', 'Oceania', 'Nassau'),
   C (155, 'Bahrain', 'Middle East', 'Manama'),
   C (7, 'Bangladesh', 'Asia', 'Dhaka'),
   C (161, 'Barbados', 'Oceania', 'Bridgetown'),
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
   C (158, 'Cape Verde', 'Oceania', 'Praia'),
   C (110, 'Central African Republic', 'Africa', 'Bangui'),
   C (18, 'Chile', 'South America', 'Santiago'),
   C (1, 'China', 'Asia', 'Beijing'),
   C (144, 'Cyprus', 'Asia', 'Nicosia'),
   C (13, 'Colombia', 'South America', 'Bogota'),
   C (169, 'Comoros', 'Oceania', 'Moroni'),
   C (75, 'Congo', 'Africa', 'Brazzaville'),
   C (3, 'Democratic Republic of Congo', 'Africa', 'Kinshasa'),
   C (192, 'Cook Islands', 'Oceania', 'Avarua'),
   C (25, 'North Korea', 'Asia', 'Pyongyang'),
   C (5, 'South Korea', 'Asia', 'Seoul'),
   C (139, 'Costa Rica', 'Central America', 'San José'),
   C (130, 'Côte d Ivoire', 'Africa', 'Yamoussoukro'),
   C (99, 'Croatia', 'Europe', 'Zagreb'),
   C (41, 'Cuba', 'Altantic Ocean', 'Havana'),
   C (128, 'Denmark', 'Europe', 'Copenhagen'),
   C (129, 'Djibouti', 'Africa', 'Djibouti'),
   C (71, 'Dominican Republic', 'Oceania', 'Santo Domingo'),
   C (187, 'Dominica', 'Oceania', 'Roseau'),
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
   C (184, "Antigua und Barbuda", "Ozeanien", "Saint Johns"),
   C (19, "Saudi-Arabien", "Naher Osten", "Riad"),
   C (29, "Argentinien", "Südamerika", "Buenos Aires"),
   C (76, "Armenien", "Asien", "Eriwan"),
   C (138, "Australien", "Ozeanien", "Canberra"),
   C (46, "Österreich", "Europa", "Wien"),
   C (39, "Aserbaidschan", "Asien", "Baku"),
   C (149, "Bahamas", "Ozeanien", "Nassau"),
   C (155, "Bahrain", "Asien", "Manama"),
   C (7, "Bangladesch", "Asien", "Dhaka"),
   C (161, "Barbados", "Ozeanien", "Bridgetown"),
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
   C (158, "Kap Verde", "Ozeanien", "Praia"),
   C (110, "Zentralafrikanische Republik", "Afrika", "Bangui"),
   C (18, "Chile", "Südamerika", "Santiago"),
   C (1, "China", "Asien", "Peking"),
   C (144, "Zypern", "Asien", "Nikosia"),
   C (13, "Kolumbien", "Südamerika", "Bogota"),
   C (169, "Komoren", "Ozeanien", "Moroni"),
   C (75, "Kongo", "Afrika", "Brazzaville"),
   C (3, "Demokratische Republik Kongo", "Afrika", "Kinshasa"),
   C (192, "Cookinseln", "Ozeanien", "Avarua"),
   C (25, "Nordkorea", "Asien", "Pjöngjang"),
   C (5, "Südkorea", "Asien", "Seoul"),
   C (139, "Costa Rica", "Mittelamerika", "San José"),
   C (130, "Côte d Ivoire", "Afrika", "Yamoussoukro"),
   C (99, "Kroatien", "Europa", "Zagreb"),
   C (41, "Kuba", "Altantischer Ozean", "Havanna"),
   C (128, "Dänemark", "Europa", "Kopenhagen"),
   C (129, "Dschibuti", "Afrika", "Dschibuti"),
   C (71, "Dominikanische Republik", "Ozeanien", "Santo Domingo"),
   C (187, "Dominica", "Ozeanien", "Roseau"),
   C (14, "Ägypten", "Afrika", "Kairo"),
   C (119, "Vereinigte Arabische Emirate", "Naher Osten", "Abu Dhabi"),
   C (57, "Ecuador", "Südamerika", "Quito"),
   C (123, "Eritrea", "Afrika", "Asmara"),
   C (24, "Spanien", "Europa", "Madrid"),
   C (133, "Estland", "Europa", "Tallinn"),
   C (116, "USA", "Nordamerika", "Washington"),
   C (28, "Äthiopien", "Afrika", "Addis Abeba"),
 ];

 final List<C> dataEs = [
   C (26, 'Afganistán', 'Asia', 'Kabul'),
   C (36, 'Sudáfrica', 'África', 'Pretoria'),
   C (105, 'Albania', 'Europa', 'Tirana'),
   C (20, 'Argelia', 'África', 'Argel'),
   C (21, 'Alemania', 'Europa', 'Berlín'),
   C (183, 'Andorra', 'Europa', 'Andorra la Vella'),
   C (35, 'Angola', 'África', 'Luanda'),
   C (184, 'Antigua y Barbuda', 'Oceanía', 'Saint Johns'),
   C (19, 'Arabia Saudita', 'Medio Oriente', 'Riyadh'),
   C (29, 'Argentina', 'Sudamérica', 'Buenos Aires'),
   C (76, 'Armenia', 'Asia', 'Ereván'),
   C (138, 'Australia', 'Oceanía', 'Canberra'),
   C (46, 'Austria', 'Europa', 'Viena'),
   C (39, 'Azerbaiyán', 'Asia', 'Bakú'),
   C (149, 'Bahamas', 'Oceanía', 'Nassau'),
   C (155, 'Bahréin', 'Asia', 'Manama'),
   C (7, 'Bangladesh', 'Asia', 'Dhaka'),
   C (161, 'Barbados', 'Oceanía', 'Bridgetown'),
   C (74, 'Bélgica', 'Europa', 'Bruselas'),
   C (186, 'Belice', 'Centroamérica', 'Belmopán'),
   C (151, 'Benin', 'Arique', 'Porto-Novo'),
   C (163, 'Bután', 'Asia', 'Thimphu'),
   C (50, 'Bielorrusia', 'Europa', 'Minsk'),
   C (87, 'Birmania (Myanmar)', 'Asia', 'Naypyidaw'),
   C (92, 'Bolivia', 'Sudamérica', 'La Paz'),
   C (135, 'Bosnia y Herzegovina', 'Europa', 'Sarajevo'),
   C (150, 'Botswana', 'África', 'Gaborone'),
   C (33, 'Brasil', 'América del Sur', 'Brasilia'),
   C (181, 'Brunei', 'Asia', 'Bandar Seri Begawan'),
   C (134, 'Bulgaria', 'Europa', 'Sofía'),
   C (81, 'Burkina Faso', 'África', 'Uagadugú'),
   C (73, 'Burundi', 'África', 'Gitega'),
   C (42, 'Camboya', 'Asia', 'Phnom Penh'),
   C (54, 'Camerún', 'África', 'Yaundé'),
   C (91, 'Canadá', 'América del Norte', 'Ottawa'),
   C (158, 'Cabo Verde', 'Oceanía', 'Praia'),
   C (110, 'República Centroafricana', 'África', 'Bangui'),
   C (18, 'Chile', 'América del Sur', 'Santiago'),
   C (1, 'China', 'Asia', 'Beijing'),
   C (144, 'Chipre', 'Asia', 'Nicosia'),
   C (13, 'Colombia', 'América del Sur', 'Bogotá'),
   C (169, 'Comoras', 'Oceanía', 'Moroni'),
   C (75, 'Congo', 'África', 'Brazzaville'),
   C (3, 'República Democrática del Congo', 'África', 'Kinshasa'),
   C (192, 'Islas Cook', 'Oceanía', 'Avarua'),
   C (25, 'Corea del Norte', 'Asia', 'Pyongyang'),
   C (5, 'Corea del Sur', 'Asia', 'Seúl'),
   C (139, 'Costa Rica', 'Centroamérica', 'San José'),
   C (130, 'Côte d Ivoire', 'África', 'Yamoussoukro'),
   C (99, 'Croacia', 'Europa', 'Zagreb'),
   C (41, 'Cuba', 'Océano Atlántico', 'La Habana'),
   C (128, 'Dinamarca', 'Europa', 'Copenhague'),
   C (129, 'Djibouti', 'África', 'Djibouti'),
   C (71, 'República Dominicana', 'Oceanía', 'Santo Domingo'),
   C (187, 'Dominica', 'Oceanía', 'Roseau'),
   C (14, 'Egipto', 'África', 'El Cairo'),
   C (119, 'Emiratos Árabes Unidos', 'Oriente Medio', 'Abu Dhabi'),
   C (57, 'Ecuador', 'América del Sur', 'Quito'),
   C (123, 'Eritrea', 'África', 'Asmara'),
   C (24, 'España', 'Europa', 'Madrid'),
   C (133, 'Estonia', 'Europa', 'Tallin'),
   C (116, 'Estados Unidos', 'América del Norte', 'Washington'),
   C (28, 'Etiopía', 'África', 'Addis Abeba'),
 ];

 final List<C> dataIt = [
   C (26, "Afghanistan", "Asia", "Kabul"),
   C (36, 'Sud Africa', 'Africa', 'Pretoria'),
   C (105, 'Albania', 'Europa', 'Tirana'),
   C (20, 'Algeria', 'Africa', 'Algeri'),
   C (21, "Germania", "Europa", "Berlino"),
   C (183, "Andorra", "Europa", "Andorra la Vella"),
   C (35, 'Angola', 'Africa', 'Luanda'),
   C (184, 'Antigua e Barbuda', 'Oceania', 'Saint Johns'),
   C (19, "Arabia Saudita", "Medio Oriente", "Riyadh"),
   C (29, "Argentina", "Sud America", "Buenos Aires"),
   C (76, 'Armenia', 'Asia', 'Yerevan'),
   C (138, "Australia", "Oceania", "Canberra"),
   C (46, 'Austria', 'Europa', 'Vienna'),
   C (39, 'Azerbaigian', 'Asia', 'Baku'),
   C (149, 'Bahamas', 'Oceania', 'Nassau'),
   C (155, 'Bahrain', 'Asia', 'Manama'),
   C (7, "Bangladesh", "Asia", "Dhaka"),
   C (161, "Barbados", "Oceania", "Bridgetown"),
   C (74, "Belgio", "Europa", "Bruxelles"),
   C (186, 'Belize', 'America Centrale', 'Belmopan'),
   C (151, 'Benin', 'Arique', 'Porto-Novo'),
   C (163, 'Bhutan', 'Asia', 'Thimphu'),
   C (50, "Bielorussia", "Europa", "Minsk"),
   C (87, "Birmania (Myanmar)", "Asia", "Naypyidaw"),
   C (92, 'Bolivia', 'Sud America', 'La Paz'),
   C (135, 'Bosnia ed Erzegovina', 'Europa', 'Sarajevo'),
   C (150, "Botswana", "Africa", "Gaborone"),
   C (33, "Brasile", "Sud America", "Brasilia"),
   C (181, "Brunei", "Asia", "Bandar Seri Begawan"),
   C (134, 'Bulgaria', 'Europa', 'Sofia'),
   C (81, "Burkina Faso", "Africa", "Ouagadougou"),
   C (73, 'Burundi', 'Africa', 'Gitega'),
   C (42, "Cambogia", "Asia", "Phnom Penh"),
   C (54, 'Camerun', 'Africa', 'Yaoundé'),
   C (91, "Canada", "Nord America", "Ottawa"),
   C (158, 'Capo Verde', 'Oceania', 'Praia'),
   C (110, "Repubblica Centrafricana", "Africa", "Bangui"),
   C (18, "Cile", "Sud America", "Santiago"),
   C (1, "Cina", "Asia", "Pechino"),
   C (144, 'Cipro', 'Asia', 'Nicosia'),
   C (13, "Colombia", "Sud America", "Bogotà"),
   C (169, 'Comore', 'Oceania', 'Moroni'),
   C (75, 'Congo', 'Africa', 'Brazzaville'),
   C (3, "Repubblica Democratica del Congo", "Africa", "Kinshasa"),
   C (192, "Isole Cook", "Oceania", "Avarua"),
   C (25, "Corea del Nord", "Asia", "Pyongyang"),
   C (5, "Corea del Sud", "Asia", "Seoul"),
   C (139, "Costa Rica", "America Centrale", "San José"),
   C (130, 'Côte d Ivoire', 'Africa', 'Yamoussoukro'),
   C (99, 'Croazia', 'Europa', 'Zagabria'),
   C (41, 'Cuba', 'Oceano Atlantico', 'L Avana'),
       C (128, "Danimarca", "Europa", "Copenaghen"),
   C (129, 'Gibuti', 'Africa', 'Gibuti'),
   C (71, "Repubblica Dominicana", "Oceania", "Santo Domingo"),
   C (187, "Dominica", "Oceania", "Roseau"),
   C (14, 'Egitto', 'Africa', 'Il Cairo'),
   C (119, "Emirati Arabi Uniti", "Medio Oriente", "Abu Dhabi"),
   C (57, "Ecuador", "Sud America", "Quito"),
   C (123, 'Eritrea', 'Africa', 'Asmara'),
   C (24, 'Spagna', 'Europa', 'Madrid'),
   C (133, "Estonia", "Europa", "Tallinn"),
   C (116, "Stati Uniti", "Nord America", "Washington"),
   C (28, 'Etiopia', 'Africa', 'Addis Abeba'),
 ];

 final List<C> dataPt = [
   C (26, 'Afeganistão', 'Ásia', 'Cabul'),
   C (36, 'África do Sul', 'África', 'Pretória'),
   C (105, 'Albânia', 'Europa', 'Tirana'),
   C (20, 'Argélia', 'África', 'Argel'),
   C (21, 'Alemanha', 'Europa', 'Berlim'),
   C (183, 'Andorra', 'Europa', 'Andorra la Vella'),
   C (35, 'Angola', 'África', 'Luanda'),
   C (184, 'Antígua e Barbuda', 'Oceania', 'Saint Johns'),
   C (19, 'Arábia Saudita', 'Oriente Médio', 'Riade'),
   C (29, 'Argentina', 'América do Sul', 'Buenos Aires'),
   C (76, 'Armênia', 'Ásia', 'Yerevan'),
   C (138, 'Austrália', 'Oceania', 'Canberra'),
   C (46, 'Áustria', 'Europa', 'Viena'),
   C (39, 'Azerbaijão', 'Ásia', 'Baku'),
   C (149, 'Bahamas', 'Oceania', 'Nassau'),
   C (155, 'Bahrein', 'Ásia', 'Manama'),
   C (7, 'Bangladesh', 'Ásia', 'Daca'),
   C (161, 'Barbados', 'Oceania', 'Bridgetown'),
   C (74, 'Bélgica', 'Europa', 'Bruxelas'),
   C (186, 'Belize', 'América Central', 'Belmopan'),
   C (151, 'Benin', 'Arique', 'Porto-Novo'),
   C (163, 'Butão', 'Ásia', 'Thimphu'),
   C (50, 'Bielo-Rússia', 'Europa', 'Minsk'),
   C (87, 'Burma (Myanmar)', 'Asia', 'Naypyidaw'),
   C (92, 'Bolívia', 'América do Sul', 'La Paz'),
   C (135, 'Bósnia e Herzegovina', 'Europa', 'Sarajevo'),
   C (150, 'Botswana', 'África', 'Gaborone'),
   C (33, 'Brasil', 'América do Sul', 'Brasília'),
   C (181, 'Brunei', 'Ásia', 'Bandar Seri Begawan'),
   C (134, 'Bulgária', 'Europa', 'Sofia'),
   C (81, 'Burkina Faso', 'África', 'Ouagadougou'),
   C (73, 'Burundi', 'África', 'Gitega'),
   C (42, 'Camboja', 'Ásia', 'Phnom Penh'),
   C (54, 'Camarões', 'África', 'Yaoundé'),
   C (91, 'Canadá', 'América do Norte', 'Ottawa'),
   C (158, 'Cabo Verde', 'Oceania', 'Praia'),
   C (110, 'República Centro-Africana', 'África', 'Bangui'),
   C (18, 'Chile', 'América do Sul', 'Santiago'),
   C (1, 'China', 'Ásia', 'Pequim'),
   C (144, 'Chipre', 'Ásia', 'Nicósia'),
   C (13, 'Colômbia', 'América do Sul', 'Bogotá'),
   C (169, 'Comores', 'Oceania', 'Moroni'),
   C (75, 'Congo', 'África', 'Brazzaville'),
   C (3, 'República Democrática do Congo', 'África', 'Kinshasa'),
   C (192, 'Ilhas Cook', 'Oceania', 'Avarua'),
   C (25, 'Coreia do Norte', 'Ásia', 'Pyongyang'),
   C (5, 'Coreia do Sul', 'Ásia', 'Seul'),
   C (139, 'Costa Rica', 'América Central', 'San José'),
   C (130, 'Côte d Ivoire', 'África', 'Yamoussoukro'),
   C (99, 'Croácia', 'Europa', 'Zagreb'),
   C (41, 'Cuba', 'Oceano Atlântico', 'Havana'),
   C (128, 'Dinamarca', 'Europa', 'Copenhague'),
   C (129, 'Djibouti', 'África', 'Djibouti'),
   C (71, 'República Dominicana', 'Oceania', 'Santo Domingo'),
   C (187, 'Dominica', 'Oceania', 'Roseau'),
   C (14, 'Egito', 'África', 'Cairo'),
   C (119, 'Emirados Árabes Unidos', 'Oriente Médio', 'Abu Dhabi'),
   C (57, 'Equador', 'América do Sul', 'Quito'),
   C (123, 'Eritreia', 'África', 'Asmara'),
   C (24, 'Espanha', 'Europa', 'Madrid'),
   C (133, 'Estônia', 'Europa', 'Tallinn'),
   C (116, 'Estados Unidos', 'América do Norte', 'Washington'),
   C (28, 'Etiópia', 'África', 'Adis Abeba'),
 ];

 final List<C> dataRu = [
 C (26, 'Афганистан', 'Средняя Азия', 'Кабул'),
 C (36, 'Южная Африка', 'Африка', 'Претория'),
 C (105, 'Албания', 'Европа', 'Тирана'),
 C (20, 'Алжир', 'Африка', 'Алжир'),
 C (21, 'Германия', 'Европа', 'Берлин'),
 C (183, 'Андорра', 'Европа', 'Андорра-ла-Велья'),
 C (35, 'Ангола', 'Африка', 'Луанда'),
 C (184, 'Антигуа и Барбуда', 'Океания', 'Сент-Джонс'),
 C (19, 'Саудовская Аравия', 'Средняя Азия', 'Эр-Рияд'),
 C (29, 'Аргентина', 'Южная Америка', 'Буэнос-Айрес'),
 C (76, 'Армения', 'Средняя Азия', 'Ереван'),
 C (138, 'Австралия', 'Океания', 'Канберра'),
 C (46, 'Австрия', 'Европа', 'Вена'),
 C (39, 'Азербайджан', 'Средняя Азия', 'Баку'),
 C (149, 'Багамы', 'Океания', 'Нассау'),
 C (155, 'Бахрейн', 'Средняя Азия',  'Манама'),
 C (7, 'Бангладеш', 'Азия', 'Дакка'),
 C (161, 'Барбадос', 'Океания', 'Бриджтаун'),
 C (74, 'Бельгия', 'Европа','Брюссель'),
 C (186, 'Белиз', 'Центральная Америка', 'Бельмопан'),
 C (151, 'Бенин', 'Африка', 'Порто-Ново'),
 C (163, 'Бутан', 'Азия', 'Тхимпху'),
 C (50, 'Беларусь', 'Европа', 'Минск'),
 C (87, 'Бирма (Мьянма)', 'Азия', 'Нейпьидо'),
 C (92, 'Боливия', 'Южная Америка', 'Ла-Пас'),
 C (135, 'Босния и Герцеговина', 'Европа', 'Сараево'),
 C (150, 'Ботсвана', 'Африка', 'Габороне'),
 C (33, 'Бразилия', 'Южная Америка', 'Бразилиа'),
 C (181, 'Бруней', 'Азия', 'Бандар-Сери-Бегаван'),
 C (134, 'Болгария', 'Европа', 'София'),
 C (81, 'Буркина-Фасо', 'Африка', 'Уагадугу'),
 C (73, 'Бурунди', 'Африка', 'Гитега'),
 C (42, 'Камбоджа', 'Азия', 'Пномпень'),
 C (54, 'Камерун', 'Африка', 'Яунде'),
 C (91, 'Канада', 'Северная Америка', 'Оттава'),
 C (158, 'Кабо-Верде', 'Океания', 'Прая'),
 C (110, 'Центрально-африканская Республика', 'Африка', 'Банги'),
 C (18, 'Чили', 'Южная Америка', 'Сантьяго'),
 C (1, 'Китай', 'Азия', 'Пекин'),
 C (144, 'Кипр', 'Азия', 'Никосия'),
 C (13, 'Колумбия', 'Южная Америка', 'Богота'),
 C (169, 'Коморские острова', 'Океания', 'Морони'),
 C (75, 'Конго', 'Африка', 'Браззавиль'),
 C (3, 'Демократическая Республика Конго', 'Африка', 'Киншаса'),
 C (192, 'Острова Кука', 'Океания', 'Аваруа'),
 C (25, 'Северная Корея', 'Азия', 'Пхеньян'),
 C (5, 'Южная Корея', 'Азия', 'Сеул'),
 C (139, 'Коста-Рика', 'Центральная Америка', 'Сан-Хосе'),
 C (130, 'Кот-д Ивуар', 'Африка', 'Ямусукро'),
 C (99, 'Хорватия', 'Европа', 'Загреб'),
 C (41, 'Куба', 'Океания', 'Гавана'),
 C (128, 'Дания', 'Европа', 'Копенгаген'),
 C (129, 'Джибути', 'Африка', 'Джибути'),
 C (71, 'Доминиканская Республика', 'Океания', 'Санто-Доминго'),
 C (187, 'Доминика', 'Океания', 'Розо'),
 C (14, 'Египет', 'Африка', 'Каир'),
 C (119, 'Объединенные Арабские Эмираты', 'Средняя Азия', 'Абу-Даби'),
 C (57, 'Эквадор', 'Южная Америка', 'Кито'),
 C (123, 'Эритрея', 'Африка', 'Асмэра'),
 C (24, 'Испания', 'Европа', 'Мадрид'),
 C (133, 'Эстония', 'Европа', 'Таллинн'),
 C (116, 'США', 'Северная Америка', 'Вашингтон'),
 C (28, 'Эфиопия', 'Африка', 'Аддис-Абеба'),
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
    if (language == 'es') data = widget.dataEs;
    if (language == 'it') data = widget.dataIt;
    if (language == 'pt') data = widget.dataPt;
    if (language == 'ru') data = widget.dataRu;

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
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration:
                BoxDecoration(color: Theme.of(context).accentColor),
                padding: EdgeInsets.all(20.0),
                child: DropdownButton(
                    value: language,
                    // icon: Icon(Icons.language, color: Colors.black,),
                    // iconSize: 30.0,
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
                          child: Text('Deutsch'),
                          value: 'de'
                      ),
                      DropdownMenuItem(
                          child: Text('Español'),
                          value: 'es'
                      ),
                      DropdownMenuItem(
                          child: Text('Italiano'),
                          value: 'it'
                      ),
                      DropdownMenuItem(
                          child: Text('Português'),
                          value: 'pt'
                      ),
                      DropdownMenuItem(
                          child: Text('Русский'),
                          value: 'ru'
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {language = value;});
                    }),
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
                  width: 150,
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
                  width: 150,
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
                  width: 150,
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
