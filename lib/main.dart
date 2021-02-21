import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pabitbit_pabagahe_pabili/screens/home/home_screen.dart';

void main() {
  // Make status bar transparent.
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pabitbit Pabagahe Pabili (P3)',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: const Color.fromRGBO(248, 161, 209, 1.0),
        fontFamily: 'ProximaNova',
        textTheme: const TextTheme(
          headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      // body: Container(
      //   color: Colors.blueAccent,
      // ),
    );
  }
}
