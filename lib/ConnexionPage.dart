
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Connexion extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    /*final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image(
            image: AssetImage('assets/sewing-machine.png'),
          )
          *//*Icon(
            Icons.visibility,
            size: 100.0,
            color: Colors.white,
          ),*//*
        )
    );*/

    final emailInput = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
          labelText: "Nom d'utilisateur",
          labelStyle: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Roboto Medium',
              color: Colors.white
          ),
        alignLabelWithHint: true,
        hintText: 'Votre adresse',
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        enabledBorder:  OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(32.0),
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )
      ),
    );

    final passwordInput = TextFormField(

      autofocus: false,
      initialValue: null,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Mot de Passe',
          labelStyle: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Roboto Medium',
            color: Colors.white
          ),
          alignLabelWithHint: true,
          hintText: 'Votre Mot de Passe',
          hintStyle: TextStyle(
            color: Colors.black54,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        enabledBorder:  OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(32.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        )
      ),
      validator: (input) => input.length < 8 ? 'Minimum 8 caractères': null,
    );


    final inputButton = Container(

        width: 200.0,
        height: 50.0,
      child:
        RaisedButton(

          onPressed: (){},
          color: Colors.blue,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
          child:
          Text(
            'Se connecter',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Roboto Medium',
            ),
          ),
        )
    );

    final forgotPassText = FlatButton(
      child:
      Text(
        'Mot de passe oublié ?',
        style: TextStyle(
          color: Colors.white,
            fontSize: 13.0,
            wordSpacing: 2.0,
            fontWeight: FontWeight.bold
        )

      ),
      onPressed: (){},

    );

    final createAccount = FlatButton(
      child:
      Text(
          'Créer un compte',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
          )
      ),
      onPressed: (){},
    );

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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/tenue-jaune-femme.jpg'),
                fit: BoxFit.cover,
              )
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x0095FF).withOpacity(0.35),
            ),
            child:
                Container(
                  height: MediaQuery.of(context).size.height,
                  child:
                  Center(
                    child:
                    ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(left: 24.0,right: 24.0),
                      children: <Widget>[
                        //logo,
                        SizedBox(height: 100.0),
                        emailInput,
                        SizedBox(height: 15.0),
                        passwordInput,
                        SizedBox(height: 30.0),
                        inputButton,
                        SizedBox(height: 15.0),
                        forgotPassText,
                        SizedBox(height: 15.0),
                        createAccount,
                      ],
                    ),
                  )
                )
          ),
        )
    );
  }
}
