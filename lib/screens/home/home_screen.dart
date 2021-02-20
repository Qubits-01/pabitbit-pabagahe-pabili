import 'package:flutter/material.dart';

import 'package:pabitbit_pabagahe_pabili/screens/home/widgets/greetings_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0,
          child: GreetingsHeader(),
        ),
      ],
    );
  }
}
