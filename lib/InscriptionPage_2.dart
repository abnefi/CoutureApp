import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/AccueilPage.dart';
import 'package:myapp/Appbarfile.dart';
import 'package:myapp/InscriptionVariables.dart';

class Inscription_2 extends StatefulWidget{
  //
  Inscription_2():super();
  //
  static String tag = 'inscription_2-page';

  @override
  _Inscription_2State createState() => _Inscription_2State();
}

class _Inscription_2State extends State<Inscription_2>{
  //
  final formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){

    final nextButton = Container(
        width: 129.0,
        height: 35.0,
        child:
        RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(Accueil.tag);
          },
          color: Colors.indigoAccent,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          child:
          Text(
            "S'inscrire",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Roboto Medium',
            ),
          ),
        )
    );

    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: appBar1,
        body:
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: bodyContainerDecorationImage,
            child:
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0x0095FF).withOpacity(0.35),
              ),
            child:
              ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child:
                        Stack(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/Rectangle 7.png'),
                              color: Colors.blue,
                            ),
                            Positioned(
                              bottom: 25.0,
                              left: 25.0,
                              child:
                              Text(
                                'Inscription',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto Medium',
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child:
                        Form(
                            child:
                            Padding(
                              padding: EdgeInsets.only(left: 24.0,right: 24.0,top: 40.0),
                              child:
                              Column(
                                children: <Widget>[
                                  emailInput,
                                  SizedBox(height: 30.0,),
                                  passwordInput,
                                  SizedBox(height: 30.0,),
                                  passwordConfirmInput,
                                  SizedBox(height: 240.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      nextButton
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}