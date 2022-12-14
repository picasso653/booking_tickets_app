import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
Color primary = Color.fromARGB(255, 73, 108, 204);

class Styles {
  static Color primaryColor = primary;
  static Color kakiColor = const Color.fromARGB(255, 243, 161, 106);
  static Color textcolor = const Color.fromARGB(234, 18, 17, 19);
  static Color backgroundcolor = const Color.fromARGB(255, 207, 207, 192);
  static Color orangeColor = const Color.fromARGB(255, 252, 54, 28);
  static TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: textcolor);
  static TextStyle headlineText1 =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: textcolor);
  static TextStyle headlineText2 =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: textcolor);
  static TextStyle headlineText3 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: textcolor);
  static TextStyle headlineText4 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color: Color.fromARGB(255, 104, 103, 103));
}
