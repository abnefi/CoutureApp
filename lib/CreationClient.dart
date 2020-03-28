import 'package:flutter/material.dart';
import 'package:myapp/CreationClientValues.dart';

class CreerClient extends StatefulWidget {

  static String tagCreerClient = 'tagCreerClient';

  @override
  _CreerClientState createState() => _CreerClientState();
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

class _CreerClientState extends State<CreerClient> {

  String _value = null ;
  List<String> _values = List<String>();

  String _value1 = null ;
  List<String> _values1 = List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _values.addAll(["M","F"]);
    _value = _values.elementAt(0);

    _values1.addAll(["Noir","Clair"]);
    _value1 = _values1.elementAt(0);
  }

  void _onChanged(String value){
    setState(() {
      _value = value;
    });
  }

  void _onChanged1(String value){
    setState(() {
      _value1 = value;
    });
  }


  @override
  Widget build(BuildContext context) {

    //Appbar
    final creerClientAppbar = AppBar(
      title: Text('Fashion Tailor'),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null
        ),
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


    final sexeClient = DropdownButton(
      value: _value,
      items: _values.map((String value){
        return DropdownMenuItem(
          value: value,
          child: Row(
            children: <Widget>[
              Text(value)
            ],
          ),
        );
      }).toList(),
      onChanged: (String value){_onChanged(value);},
    );

    final teintClient = DropdownButton(
      value: _value1,
      items: _values1.map((String value){
        return DropdownMenuItem(
          value: value,
          child: Row(
            children: <Widget>[
              Text(value)
            ],
          ),
        );
      }).toList(),
      onChanged: (String value){_onChanged1(value);},
    );


    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: creerClientAppbar,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/boubou-femme.jpg'),
                          radius: 45,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Nom : '),
                                Container(
                                  width: 150,
                                  child: inputstyle,
                                )
                              ],
                            ),Row(
                              children: <Widget>[
                                Text('Telephone : '),
                                Container(
                                  width: 150,
                                  child: inputstyle,
                                )
                              ],
                            ),Row(
                              children: <Widget>[
                                Text('Sexe : '),
                                SizedBox(width: 15.0),
                                Container(
                                  width: 150,
                                  child: sexeClient,
                                )
                              ],
                            ),Row(
                              children: <Widget>[
                                Text('Teint : '),
                                SizedBox(width: 15.0),
                                Container(
                                  width: 150,
                                  child: teintClient,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child:
                  Text(
                    'Mesures(cm)',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontFamily: 'Roboto Medium',
                        fontSize: 14
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('H Poitrine : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Lg Buste : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Lg Corsage : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Lg Robe : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Encolure : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Ca Devant : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Tr Poitrine : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Ecart sein : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Tr de Taille : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Tr Manche : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Lg Jupe : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Lg Pantalon : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Lg Dos : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Ca Dos : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Larg Dos : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Lg Manche : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Poignet : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          ),
                          SizedBox(width: 30.0,),
                          Row(
                            children: <Widget>[
                              Text('Pente : '),
                              Container(
                                width: 100,
                                child: inputstyle,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
