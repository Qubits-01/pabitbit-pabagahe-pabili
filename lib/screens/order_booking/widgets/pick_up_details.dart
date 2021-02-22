import 'package:flutter/material.dart';

import 'form_group.dart';

class PickUpDetails extends StatelessWidget {
  const PickUpDetails(
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
            labelText: 'Contact Name',
          ),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Pick-up Address',
          ),
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Contact Number',
          ),
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Box Weight',
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Box Size',
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Schedule of Pick-up',
          ),
          keyboardType: TextInputType.datetime,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
