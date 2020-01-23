import 'package:flutter/material.dart';

 final appBar1 = AppBar(
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
 );