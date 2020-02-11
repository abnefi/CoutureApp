import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ConnexionPage.dart';
import 'package:myapp/ContenuAccueil.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/InscriptionPage_1.dart';
import 'package:myapp/SousCategorie_Homme.dart';
import 'package:myapp/BottomNavigationBarFile.dart';

class Accueil extends StatefulWidget{
  static String tag = 'accueil-page';

  @override
  _AccueilState createState() => _AccueilState();
}

class Constants{
  static const String MonCompte = 'Mon compte';
  static const String Parametres = 'Paramètres';
  static const String Partager = 'Partager';
  static const String Apropos = 'A propos';
  static const String Quitter = 'Quitter';

  static const List<String> choices = <String> [
    MonCompte,Parametres, Partager, Apropos, Quitter
  ];
}


void ChoiceAction(String choice){
  //print ('Working');
  if(choice == 'Mon compte'){
    print('je veux manger');
  }
}

class _AccueilState extends State<Accueil>{

  int _currentIndex = 0;
  //
  Widget Pages(int currentIndex){
    switch(currentIndex){
      case 0: return ContenuAccueil();
      case 1: return Homepage();
      case 2: return Connexion();
      case 3: return Inscription_1();
      break;
      default: ContenuAccueil();
    }
  }

  @override
  Widget build(BuildContext context){

    //Appbar
    final appbar = AppBar(
      title: Text('E-Couture'),
      actions: <Widget>[
        PopupMenuButton <String>(
          onSelected: ChoiceAction,
          itemBuilder: (BuildContext context){
            return Constants.choices.map((String choices){
              return PopupMenuItem<String>(
                value: choices,
                child: Text(choices),
              );
            }).toList();
          },
        )
      ],
    );
    //Fin Appbar

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
      appBar: appbar,
      body: Pages(_currentIndex),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

