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
        accentColor: Colors.amberAccent,
        fontFamily: 'ProximaNova',
        textTheme: const TextTheme(
          headline3: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
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
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        backgroundColor: Colors.deepPurple[50],
        animationDuration: const Duration(milliseconds: 400),
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.delivery_dining, size: 30),
        ],
        onTap: (index) {
          // Handle button tap.
          print(index);
        },
      ),
    );
  }
}
