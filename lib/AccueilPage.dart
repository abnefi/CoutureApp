

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Appbarfile.dart';

class Accueil extends StatefulWidget{
  static String tag = 'accueil-page';

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil>{

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context){
    //
    final bottomNavigationBar1 = BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value){
        _currentIndex = value;
        setState(() {});
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Accueil',
            /*style: TextStyle(
                  color: Colors.blue
              ),*/
          ),
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Clients',
            /*style: TextStyle(
                color: Colors.blue
              ),*/
          ),
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Commandes',
            /*style: TextStyle(
                  color: Colors.blue
              ),*/
          ),
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Catalogue',
            /*style: TextStyle(
                  color: Colors.blue
              ),*/
          ),
          //backgroundColor: Colors.blue,
        )
      ],
    );

    //
    final bottomNavigationBar2 = BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (value){
        _currentIndex = value;
        setState(() {});
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

    return Scaffold(
      appBar: appBar1,
      body:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child:
                Card(
                  child:
                  Image(
                    image: ,
                  ),
                ),
              )
            ]
          ),
          Container(
            height: MediaQuery.of(context).size.height-140.6,
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16.0),
                childAspectRatio: 0.9,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                children: <Widget>[
                  myGridItems('Hommes', "assets/boubou-femme.jpg"),
                  myGridItems('Femmes', "assets/tenue-jaune-femme.jpg"),
                  myGridItems('Enfants', "assets/boubou-femme.jpg"),
                  myGridItems('Couples', "assets/tenue-jaune-femme.jpg"),
                  myGridItems('Enfants', "assets/boubou-femme.jpg"),
                  myGridItems('Couples', "assets/tenue-jaune-femme.jpg"),
                  myGridItems('Enfants', "assets/boubou-femme.jpg"),
                  myGridItems('Couples', "assets/tenue-jaune-femme.jpg"),
                ],
              ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar2,
    );
  }
}

Widget myGridItems(String gridName, String gridImage){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 4.0
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
                  image: AssetImage(gridImage),
                  fit: BoxFit.fill
              )
          ),
        ),
        Positioned(
          bottom: 0.0,
          child:
          Container(
            width: 154.0,
            height: 30.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(7.0), bottomLeft: Radius.circular(7.0)),
                color: Colors.black.withOpacity(0.45)
            ),
            child:
            Text(
              gridName,
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