// ignore_for_file: deprecated_member_use, constant_identifier_names

import 'package:flutter/material.dart';


const APPBAR_COLOR= Color.fromRGBO(252, 185, 0, 1);
const BUTTON_COLOR= Color.fromRGBO(44, 41, 41, 1);

var themeData=ThemeData(
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontFamily: 'poppins'),
        bodyText2: TextStyle(fontFamily: 'poppins'),
      ),
      appBarTheme: const AppBarTheme(
      // Couleur de la flèche de retour
      iconTheme: IconThemeData(
        color: Colors.black, // Couleur de la flèche de retour
      ),
      //fontFamily: 'poppins'
)); 