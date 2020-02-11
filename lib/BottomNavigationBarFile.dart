import 'package:flutter/material.dart';
import 'package:myapp/ConnexionPage.dart';
import 'package:myapp/ContenuAccueil.dart';
import 'package:myapp/InscriptionPage_1.dart';
import 'package:myapp/SousCategorie_Homme.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  //
  Widget Pages(int currentIndex){
    switch(currentIndex){
      case 0: return ContenuAccueil();
      case 1: return SOusCategorieHomme('Homme');
      case 2: return Connexion();
      case 3: return Inscription_1();
      break;
      default: ContenuAccueil();
    }
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
  }
}
