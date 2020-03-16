import 'package:flutter/material.dart';
import 'package:myapp/AccueilPage.dart';
import 'package:myapp/SousCategorie_Homme.dart';
import 'package:myapp/detailsPhotos.dart';

class ContenuAccueil extends StatefulWidget {
  @override
  _ContenuAccueilState createState() => _ContenuAccueilState();
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


class _ContenuAccueilState extends State<ContenuAccueil> {


  @override
  Widget build(BuildContext context) {
    List<GridModel> model = [
      new GridModel(name:"Homme", chemin:"assets/boubou-femme.jpg"),
      new GridModel(name:"Femme", chemin:"assets/boubou-femme.jpg"),
      new GridModel(name:"Couples", chemin:"assets/boubou-femme.jpg"),
      new GridModel(name:"Enfants", chemin:"assets/boubou-femme.jpg")
    ];

    //Appbar
    final appbarCOntAcc = AppBar(
      title: Text('Fashion Tailor'),
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

    return Scaffold(
      appBar: appbarCOntAcc,
      body: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  height: MediaQuery.of(context).size.height-565.9,
                  width: MediaQuery.of(context).size.width,
                  child:
                  Card(
                      elevation: 2.0,
                      child:
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.0),
                        child: Image(
                          image: AssetImage('assets/boubou-femme.jpg'),
                          fit: BoxFit.contain,
                        ),
                      )
                  ),
                ),
              ]
          ),
          Container(  //Les gridTiles
            margin: EdgeInsets.only(top: 10.0),
            height: MediaQuery.of(context).size.height-365,
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              childAspectRatio: 0.9,
              crossAxisSpacing: 25.0,
              mainAxisSpacing: 25.0,
              children:
              List.generate(model.length, (index)
              {
                return
                  GestureDetector(
                    child:
                    GridTile(
                      child:  model[index],
                    ),
                    onTap: (){
                      if(model[index].name == 'Homme'){
                        Navigator.of(context).pushNamed(SOusCategorieHomme.tagHomme);
                      }
                      else if(model[index].name == 'Femme'){
                        Navigator.of(context).pushNamed(SOusCategorieHomme.tagFemme);
                      }else if(model[index].name == 'Couples'){
                        Navigator.of(context).pushNamed(SOusCategorieHomme.tagCouples);
                      }else{
                        Navigator.of(context).pushNamed(SOusCategorieHomme.tagEnfants);
                      }
                    },
                  );

              }),
            ),
          )
        ],
      ),
    ) ;

  }
}

class GridModel extends StatelessWidget {
  String name;
  String chemin;

  GridModel({this.name, this.chemin});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2,
            )
          ]
      ),
      child:
      Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                    image: AssetImage(chemin),
                    fit: BoxFit.fill
                )
            ),
          ),
          Positioned(  // la bande sur les gridTiles
            bottom: 0.0,
            child:
            Container(
              width: 151.5,
              height: 30.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(7.0), bottomLeft: Radius.circular(7.0)),
                  color: Colors.black.withOpacity(0.45)
              ),
              child:
              Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto Medium',
                    color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}


