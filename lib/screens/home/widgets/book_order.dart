import 'package:flutter/material.dart';

import 'image_holder.dart';
import 'lower_list_tile.dart';

class BookOrder extends StatelessWidget {
  const BookOrder(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: screenSize.width * 0.9,
        child: Column(
          children: <Widget>[
            ImageHolder(),
            LowerListTile(screenSize),
          ],
        ),
      ),
    );
  }
}
