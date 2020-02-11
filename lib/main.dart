import 'package:flutter/material.dart';
import 'package:myapp/AccueilPage.dart';
import 'package:myapp/ConnexionPage.dart';
import 'package:myapp/InscriptionPage_1.dart';
import 'package:myapp/InscriptionPage_2.dart';
import 'package:myapp/SousCategorie_Homme.dart';
import 'Home.dart';
import 'ModelesHomme.dart';

void main() => runApp(ECouture(
));
class ECouture extends StatelessWidget {
  //
  final routes = <String, WidgetBuilder>{
    Inscription_1.tag: (context) => Inscription_1(),
    Inscription_2.tag: (context) => Inscription_2(),
    Homepage.tag: (context) => Homepage(),
    Connexion.tag: (context) => Connexion(),
    Accueil.tag: (context) => Accueil(),
    SOusCategorieHomme.tagHomme: (context) => SOusCategorieHomme('Homme'),
    SOusCategorieHomme.tagFemme: (context) => SOusCategorieHomme('Femme'),
    SOusCategorieHomme.tagEnfants: (context) => SOusCategorieHomme('Enfants'),
    SOusCategorieHomme.tagCouples: (context) => SOusCategorieHomme('Couples'),
    AlbumGidView.albumGridTag: (context) => AlbumGidView(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accueil(),
      routes: routes,
    );
  }
}
