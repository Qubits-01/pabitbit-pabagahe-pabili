import 'package:flutter/material.dart';

import 'form_group.dart';
import 'services_selection.dart';
import 'text_field_with_icon.dart';

class PackageDetailsForm extends StatelessWidget {
  const PackageDetailsForm(
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
      children: <Widget>[
        const TextFieldWithIcon(
          icon: Icons.line_weight_outlined,
          labelText: 'Package Weight (in kilograms)',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 5),
        const Divider(),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.view_carousel_outlined, size: 30),
            ),
            Text(
              'Service Type',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize),
            ),
          ],
        ),
        ServicesSelection(),
      ],
    );
  }
}
