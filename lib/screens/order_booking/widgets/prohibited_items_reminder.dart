import 'package:flutter/material.dart';

import 'inside_form_header.dart';
import 'prohibited_items_list.dart';

class ProhibitedItemsReminder extends StatelessWidget {
  const ProhibitedItemsReminder();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 10.0, right: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          // ignore: avoid_escaping_inner_quotes
          InsideFormHeader('Customs\' Prohibited Items'),
          ProhibitedItemsList(),
        ],
      ),
    );
  }
}
