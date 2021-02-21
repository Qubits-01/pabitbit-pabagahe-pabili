import 'package:flutter/material.dart';

import 'widgets/book_order.dart';
import 'widgets/greetings_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0.0,
          child: GreetingsHeader(screenSize),
        ),
        Positioned(
          top: screenSize.height * 0.2,
          child: BookOrder(screenSize),
        ),
      ],
    );
  }
}
