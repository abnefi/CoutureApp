import 'package:flutter/material.dart';

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

 final appBar1 = AppBar(
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
     /*IconButton(
       icon: Icon(
         Icons.more_vert,
         semanticLabel: 'more_vert',
         color: Colors.white,
       ),
       onPressed: (){
         Drawer();
       }
     ),*/
   ],
 );

  void ChoiceAction(String choice){
    print ('Working');
  }

 Widget sideBar(BuildContext context){
   return Drawer(
     child: ListView.builder(
       itemCount: 3,
         itemBuilder: (context,index){
         return ;
         }
     ),
   );
 }

