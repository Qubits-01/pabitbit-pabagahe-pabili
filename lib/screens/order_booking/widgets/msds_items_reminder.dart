import 'package:flutter/material.dart';

import 'msds_items_list.dart';
import 'buy_msds_checkbox.dart';

class MsdsItemsReminder extends StatelessWidget {
  const MsdsItemsReminder();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Text(
            'Products that needs Material Safety Data Sheet (MSDS)',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline5.fontSize,
              fontWeight: Theme.of(context).textTheme.headline5.fontWeight,
              color: Theme.of(context).primaryColor,
            ),
          ),
          MsdsItemsList(),
          BuyMsdsCheckbox(),
        ],
      ),
    );
  }
}
