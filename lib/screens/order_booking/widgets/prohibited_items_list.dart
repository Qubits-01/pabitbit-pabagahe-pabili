import 'package:flutter/material.dart';

import '../../../data/customs_prohibited_items.dart';

class ProhibitedItemsList extends StatelessWidget {
  const ProhibitedItemsList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          ...customsProhibitedItems
              .map(
                (prohibitedItem) => Row(
                  children: <Widget>[
                    const Icon(Icons.arrow_right),
                    Text(
                      prohibitedItem,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
