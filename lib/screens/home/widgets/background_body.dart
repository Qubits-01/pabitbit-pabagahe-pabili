import 'package:flutter/material.dart';

import 'header.dart';

class BackgroundBody extends StatelessWidget {
  const BackgroundBody(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(screenSize),
        Container(
          height: screenSize.height * 0.7,
          width: screenSize.width,
          color: Colors.deepPurple[50],
        ),
      ],
    );
  }
}
