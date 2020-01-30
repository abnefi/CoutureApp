import 'package:flutter/material.dart';

final bodyContainerDecorationImage = BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/tenue-jaune-femme.jpg'),
      fit: BoxFit.cover,
    ),
);

final bodyContainerDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white,
        Colors.lightBlueAccent,
      ]
  ),
);

final lastNameInput = TextFormField(
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
      labelText: 'Nom',
      labelStyle: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Roboto Medium',
          color: Colors.white
      ),
      alignLabelWithHint: true,
      prefixIcon: Icon(Icons.person,color: Colors.white70,),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);

final firstNameInput = TextFormField(
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
      labelText: 'Prénom',
      labelStyle: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Roboto Medium',
          color: Colors.white
      ),
      alignLabelWithHint: true,
      prefixIcon: Icon(Icons.person,color: Colors.white70,),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);

final adressInput = TextFormField(
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
      labelText: 'Adresse de Travail',
      labelStyle: TextStyle(
        fontFamily: 'Roboto Medium',
        fontSize: 15.0,
        color: Colors.white,
      ),
      prefixIcon: Icon(Icons.business,color: Colors.white70,),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),

);

final telephoneInput = TextFormField(
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
      labelText: 'Téléphone',
      labelStyle: TextStyle(
        fontFamily: 'Roboto Medium',
        fontSize: 15.0,
        color: Colors.white,
      ),
      prefixIcon: Icon(Icons.call,color: Colors.white70,),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);

final emailInput = TextFormField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
      labelText: 'Email',
      labelStyle: TextStyle(
          fontSize: 15.0,
          fontFamily: 'Roboto Medium',
          color: Colors.white
      ),
      alignLabelWithHint: true,
      prefixIcon: Icon(Icons.person,color: Colors.white70,),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);

final passwordInput = TextFormField(
  obscureText: true,
  decoration: InputDecoration(
      labelText: 'Mot de Passe',
      labelStyle: TextStyle(
          fontSize: 15.0,
          fontFamily: 'Roboto Medium',
          color: Colors.white
      ),
      alignLabelWithHint: true,
      prefixIcon: Icon(Icons.lock,color: Colors.white70,),
      suffixIcon: IconButton(
        onPressed: (){
        },
        icon: Icon(Icons.visibility_off),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);

final passwordConfirmInput = TextFormField(
  obscureText: true,
  decoration: InputDecoration(
      labelText: 'Confirmation',
      labelStyle: TextStyle(
        fontFamily: 'Roboto Medium',
        fontSize: 15.0,
        color: Colors.white,
      ),
      prefixIcon: Icon(Icons.lock,color: Colors.white70,),
      suffixIcon: IconButton(
        onPressed: (){
        },
        icon: Icon(Icons.visibility_off),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  ),
);


