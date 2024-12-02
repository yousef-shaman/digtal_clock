import 'package:flutter/material.dart';

class AppStyle {
  // static Color primaryColor = const Color(0xFF2253FF);
  // static Color primaryColorDark = const Color(0xFF193BB1);


  static Color primaryColor = const Color(0xFFfafafa);
  static Color primaryColorDark = const Color.fromARGB(255, 17, 25, 54);
  /* Definining text style */
  static TextStyle maintext = const TextStyle(
    color: Color.fromARGB(255, 17, 25, 54),
    fontSize: 82.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle maintextDark = const TextStyle(
    color: Color.fromARGB(255, 213, 216, 47),
    fontSize: 82.0,
    fontWeight: FontWeight.bold,
  );


  static TextStyle mainTextThin = const TextStyle(
    color: Colors.deepOrange,
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
  );
  static TextStyle mainTextThinDark = const TextStyle(
    color: Color.fromARGB(255, 241, 215, 207),
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
  );
}