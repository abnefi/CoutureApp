
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Appbarfile.dart';

class Accueil extends StatefulWidget{
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar1,
      body: null,
      bottomNavigationBar: BottomNavigationBar(
      ),
    );
  }
}