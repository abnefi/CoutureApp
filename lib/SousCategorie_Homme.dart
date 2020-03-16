import 'package:flutter/material.dart';
import 'package:myapp/AccueilPage.dart';
import 'package:myapp/ModelesHomme.dart';

class SOusCategorieHomme extends StatefulWidget {

  static String tagHomme = 'tagHomme';
  static String tagFemme = 'tagFemme';
  static String tagEnfants = 'tagEnfants';
  static String tagCouples = 'tagCouples';

  String title;
  Widget mylist;
  int sousCategorie;

  SOusCategorieHomme(this.title);

  @override
  _SOusCategorieHommeState createState() => _SOusCategorieHommeState();
}

class _SOusCategorieHommeState extends State<SOusCategorieHomme> {

  //
  List<DesignModel> modele;

  Widget myListView (){
    return ListView.builder(
      itemCount: modele.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 1.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
              side: BorderSide(
                color: Colors.blue
              )
            ),
            child: ListTile(
              onTap: (){
                Navigator.of(context).pushNamed(AlbumGidView.albumGridTag);
              },
              title: Text(modele[index].nomModele),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${modele[index].imageModele}'),
                radius: 25,
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    //Appbar
    final appbar1 = AppBar(
      title: Text(widget.title),
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
        ),
      ],
    );

    //FinAppbar
      if(widget.title == 'Homme'){
        modele = [
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
        ];
      }else if(widget.title == 'Femme'){
        modele = [
          DesignModel(nomModele: 'Tenues traditionnelles', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Robes', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Boubou', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
        ];
      }else if(widget.title == 'Couples'){
        modele = [
          DesignModel(nomModele: 'Tenues traditionnelles', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Robes', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Boubou', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
        ];
      }else{
        modele = [
          DesignModel(nomModele: 'Boumba', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Pantalon', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Boubou', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
          DesignModel(nomModele: 'Tenues locales', imageModele: 'boubou-femme.jpg'),
        ];
      }

    return Scaffold(
      appBar: appbar1,
      body: myListView(),
    );
  }
}


class DesignModel{
  //
  String nomModele = '';
  String imageModele = '';

  DesignModel({ this.nomModele, this.imageModele});

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
  print ('Working');
}
