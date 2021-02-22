import 'package:flutter/material.dart';

import 'form_group.dart';
import 'services_selection.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails(
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
            labelText: 'Package Weight',
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 5),
        const Divider(),
        Text(
          'Service Type',
          style: TextStyle(
              color: Colors.black87,
              fontSize: Theme.of(context).textTheme.headline6.fontSize),
        ),
        ServicesSelection(),
      ],
    );
  }
}
