import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
    accentColor: Colors.deepPurpleAccent,
    fontFamily: 'ProximaNova',
    textTheme: const TextTheme(
      headline3: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      headline5: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16.0),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  );
}
