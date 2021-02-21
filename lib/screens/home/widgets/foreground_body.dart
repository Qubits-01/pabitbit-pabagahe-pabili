import 'package:flutter/material.dart';

import 'upper_card.dart';
import 'lower_card.dart';

class ForegroundBody extends StatelessWidget {
  const ForegroundBody(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          UpperCard(screenSize),
          const SizedBox(height: 10),
          LowerCard(screenSize),
        ],
      ),
    );
  }
}
