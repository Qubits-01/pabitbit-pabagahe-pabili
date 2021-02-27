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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.person_outline),
                Text('Contact Name:',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.map_outlined,
                  color: Colors.transparent,
                ),
                Text('Gideon Baratheon',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.map_outlined),
                Text('Contact Name:',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.arrow_right,
                  color: Colors.transparent,
                ),
                Text('Gideon Baratheon',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.phone_android_outlined),
                Text('Contact Name:',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.arrow_right,
                  color: Colors.transparent,
                ),
                Text('Gideon Baratheon',
                    style: Theme.of(context).textTheme.bodyText1),
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
