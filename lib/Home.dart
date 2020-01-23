
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E-Couture'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
                semanticLabel: 'more_vert',
                color: Colors.white,
              ),
            ),
          ],
        ),
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/boubou-femme.jpg'),
                fit: BoxFit.cover,
              )
          ),
          child:
          Container(
            decoration: BoxDecoration(
              color: Color(0x0095FF).withOpacity(0.35),
            ),
            child:
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                      child:
                        Text('E-Couture',
                          style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Ubuntu',
                              color: Colors.white,
                          ),
                        )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 70, 0, 45),
                      child: Text('Vous êtes un ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto Medium',
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.radio_button_checked,
                            semanticLabel: 'radio_button_checked',
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'Client',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto Medium',
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.radio_button_unchecked,
                              semanticLabel: 'radio_button_unchecked',
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                          Text(
                            'Couturier(ère)',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto Medium',
                              color: Colors.white,
                            ),
                          ),
                        ],
                        )
                      ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 65.0),
                      width: 200.0,
                      height: 50.0,
                      child:
                      RaisedButton(
                        onPressed: (){},
                          textColor: Colors.white,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        child: Text(
                          'Commencer',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto Medium',
                          ),
                        )
                      ),
                    )
                  ],
                )
                  ],
                )
            ),
          ),
    );
  }
}