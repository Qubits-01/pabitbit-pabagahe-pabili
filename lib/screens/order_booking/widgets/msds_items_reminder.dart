import 'package:flutter/material.dart';

import 'inside_form_header.dart';
import 'msds_items_list.dart';
import 'buy_msds_checkbox.dart';

class MsdsItemsReminder extends StatelessWidget {
  const MsdsItemsReminder();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: const <Widget>[
          InsideFormHeader(
              'Products that needs Material Safety Data Sheet (MSDS)'),
          MsdsItemsList(),
          BuyMsdsCheckbox(),
        ],
      ),
    );
  }
}
