import 'package:flutter/material.dart';

import 'form_group.dart';

class ShipmentGoingTo extends StatelessWidget {
  const ShipmentGoingTo(
    this.screenSize, {
    @required this.title,
  });

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FormGroup(
      screenSize,
      title: title,
      formFields: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Full Name',
          ),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Complete Address',
          ),
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Prefecture / City',
          ),
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Postal Code',
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Contact Number',
          ),
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
