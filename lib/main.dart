import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/AccueilPage.dart';
import 'package:myapp/ConnexionPage.dart';
import 'package:myapp/InscriptionPage_1.dart';
import 'package:myapp/InscriptionPage_2.dart';
import 'Home.dart';

void main() => runApp(ECouture(
));
class ECouture extends StatelessWidget {
  //
  final routes = <String, WidgetBuilder>{
    Inscription_1.tag: (context) => Inscription_1(),
    Inscription_2.tag: (context) => Inscription_2(),
    Homepage.tag: (context) => Homepage(),
    Connexion.tag: (context) => Connexion(),
    Accueil.tag: (context) => Accueil()
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
