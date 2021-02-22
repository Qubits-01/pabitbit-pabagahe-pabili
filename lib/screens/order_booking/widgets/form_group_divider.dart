import 'package:flutter/material.dart';

class FormGroupDivider extends StatelessWidget {
  const FormGroupDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 10),
      ],
    );
  }
}
