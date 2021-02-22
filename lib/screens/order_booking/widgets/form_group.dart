import 'package:flutter/material.dart';

import 'form_group_body.dart';
import 'form_group_header.dart';

class FormGroup extends StatelessWidget {
  const FormGroup(
    this.screenSize, {
    @required this.title,
    @required this.formFields,
  });

  final Size screenSize;
  final String title;
  final List<Widget> formFields;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: screenSize.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FormGroupHeader(screenSize, title: title),
            FormGroupBody(formFields: formFields),
          ],
        ),
      ),
    );
  }
}
