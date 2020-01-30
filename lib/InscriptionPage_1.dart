import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/Appbarfile.dart';
import 'package:myapp/InscriptionPage_2.dart';
import 'package:myapp/InscriptionVariables.dart';

class Inscription_1 extends StatefulWidget{
  //
  Inscription_1():super();
  //
  static String tag = 'inscription_1-page';

  @override
  _Inscription_1State createState() => _Inscription_1State();
}

class _Inscription_1State extends State<Inscription_1>{
  //
  final formkey = GlobalKey<FormState>();

  //
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context){

    final gender = ButtonBar(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Sexe : ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Roboto Medium'
              ),
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  activeColor: Colors.white,
                  onChanged: (val){
                    //print('Client $val selected');
                    setSelectedRadio(val);
                  },
                ),
                Text(
                  'M',
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
                Radio(
                  value: 2,
                  groupValue: selectedRadio,
                  activeColor: Colors.white,
                  onChanged: (val){
                    //print('Client $val selected');
                    setSelectedRadio(val);
                  },
                ),
                Text(
                  'F',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto Medium',
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );

    final nextButton = Container(
        width: 129.0,
        height: 35.0,
        child:
        RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(Inscription_2.tag);
          },
          color: Colors.indigoAccent,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          child:
          Text(
            'Suivant',
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
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 145,
                                        child: lastNameInput,
                                      ),
                                      SizedBox(width: 20.0,),
                                      Container(
                                        width: 145,
                                        child: firstNameInput,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: <Widget>[
                                      gender
                                    ],
                                  ),
                                  adressInput,
                                  SizedBox(height: 20.0,),
                                  telephoneInput,
                                  SizedBox(height: 200.0,),
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