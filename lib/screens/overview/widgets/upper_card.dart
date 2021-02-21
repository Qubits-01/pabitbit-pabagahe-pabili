import 'package:flutter/material.dart';

import 'upper_card_lower_list_tile.dart';
import 'upper_image_holder.dart';

class UpperCard extends StatelessWidget {
  const UpperCard(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: screenSize.width * 0.9,
        child: Column(
          children: <Widget>[
            const UpperImageHolder(),
            UpperCardLowerListTile(screenSize),
          ],
        ),
      ),
    );
  }
}
