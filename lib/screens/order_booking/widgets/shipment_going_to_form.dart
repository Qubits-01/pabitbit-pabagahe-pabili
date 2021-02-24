import 'package:flutter/material.dart';

import 'form_group.dart';
import 'text_field_with_icon.dart';

class ShipmentGoingToForm extends StatelessWidget {
  const ShipmentGoingToForm(
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
      formFields: const <Widget>[
        TextFieldWithIcon(
          icon: Icons.person_outline,
          labelText: 'Full Name',
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.map_outlined,
          labelText: 'Complete Address',
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.location_city_outlined,
          labelText: 'Prefecture or City',
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.mail_outline,
          labelText: 'Postal Code',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.phone_android_outlined,
          labelText: 'Contact Number',
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
