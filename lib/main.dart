import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pabitbit Pabagahe Pabili (P3)',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: const Color.fromRGBO(248, 161, 209, 1.0),
        fontFamily: 'ProximaNova',
        textTheme: const TextTheme(
          headline4: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
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
      body: Center(
        child: Text(
          'Hello',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
