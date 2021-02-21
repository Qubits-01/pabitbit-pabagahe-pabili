import 'package:flutter/material.dart';

import 'lower_card_info_box.dart';
import 'lower_image_holder.dart';

class LowerCard extends StatelessWidget {
  const LowerCard(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.2,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 55,
              child: LowerImageHolder(screenSize),
            ),
            const Expanded(
              flex: 45,
              child: LowerCardInfoBox(),
            ),
          ],
        ),
      ),
    );
  }
}
