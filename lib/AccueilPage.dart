import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ConnexionPage.dart';
import 'package:myapp/ContenuAccueil.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/InscriptionPage_1.dart';
import 'package:myapp/ListeClients.dart';
import 'package:myapp/ListeCommades.dart';
import 'package:myapp/SousCategorie_Homme.dart';
import 'package:myapp/BottomNavigationBarFile.dart';

class Accueil extends StatefulWidget{
  static String tag = 'accueil-page';

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil>{

  int _currentIndex = 0;
  //
  Widget Pages(int currentIndex){
    switch(currentIndex){
      case 0: return ContenuAccueil();
      case 1: return ListeClients();
      case 2: return ListeCommandes();
      case 3: return Inscription_1();
      break;
      default: ContenuAccueil();
    }
  }

  @override
  Widget build(BuildContext context){

    //Bottom Navigation Bar
    final bottomNavBar = BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (value){
        _currentIndex = value;
        setState(() {

        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Accueil',
          ),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Clients',
          ),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Commandes',
          ),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Catalogue',
          ),
          backgroundColor: Colors.blue,
        )
      ],
    );

    //Fin Bottom Navigation Bar


    return Scaffold(
      body: Pages(_currentIndex),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

