import 'package:flutter/material.dart';

import '../../../data/msds_items.dart';

class MsdsItemsList extends StatelessWidget {
  const MsdsItemsList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          ...msdsItems
              .map(
                (msdsItem) => Row(
                  children: <Widget>[
                    const Icon(Icons.arrow_right),
                    Text(
                      msdsItem,
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
