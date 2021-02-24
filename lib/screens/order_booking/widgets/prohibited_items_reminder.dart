import 'package:flutter/material.dart';

import 'prohibited_items_list.dart';

class ProhibitedItemsReminder extends StatelessWidget {
  const ProhibitedItemsReminder();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 10.0, right: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            // ignore: avoid_escaping_inner_quotes
            'Customs\' Prohibited Items',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline5.fontSize,
              fontWeight: Theme.of(context).textTheme.headline5.fontWeight,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ProhibitedItemsList(),
        ],
      ),
    );
  }
}
