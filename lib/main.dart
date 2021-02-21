import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme_data.dart';
import 'screens/home/home_screen.dart';

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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {},
    );
  }
}
