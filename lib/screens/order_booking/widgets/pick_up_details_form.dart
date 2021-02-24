import 'package:flutter/material.dart';

import 'form_group.dart';
import 'text_field_with_icon.dart';

class PickUpDetailsForm extends StatelessWidget {
  const PickUpDetailsForm(
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
          labelText: 'Contact Name',
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.map_outlined,
          labelText: 'Pick-up Address',
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.phone_android_outlined,
          labelText: 'Contact Number',
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.line_weight_outlined,
          labelText: 'Package Weight (in kilograms)',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.photo_size_select_small_rounded,
          labelText: 'Box Size',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
