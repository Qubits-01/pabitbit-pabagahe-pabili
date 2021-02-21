import 'package:flutter/material.dart';

import 'widgets/background_body.dart';
import 'widgets/foreground_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0.0,
          child: BackgroundBody(screenSize),
        ),
        Positioned(
          top: screenSize.height * 0.2,
          child: Container(
            height: screenSize.height * 0.7,
            child: ForegroundBody(screenSize),
          ),
        ),
      ],
    );
  }
}
