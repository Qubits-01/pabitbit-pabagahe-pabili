import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme_data.dart';
import 'screens/home/home_screen.dart';
import 'widgets/my_bottom_navigation_bar.dart';

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
      theme: themeData(),
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
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
