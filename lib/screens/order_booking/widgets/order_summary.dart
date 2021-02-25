import 'package:flutter/material.dart';

import 'form_group.dart';
import 'inside_form_header.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FormGroup(
      screenSize,
      title: title,
      children: <Widget>[
        InsideFormHeader('Pick-up Details'),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.arrow_right),
                Text('Contact Name: '),
                Text('Gideon Baratheon'),
              ],
            ),
          ],
        ),
        const Divider(),
        InsideFormHeader('Shipment Going To'),
        const Divider(),
        InsideFormHeader('Package Details'),
        const Divider(),
        InsideFormHeader('Item Reminders'),
        const Divider(),
        InsideFormHeader('Total Cost'),
      ],
    );
  }
}
