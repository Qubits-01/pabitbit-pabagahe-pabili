import 'package:flutter/material.dart';

class InsideFormHeader extends StatelessWidget {
  const InsideFormHeader(this.headerTitle);

  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerTitle,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.headline5.fontSize,
        fontWeight: Theme.of(context).textTheme.headline5.fontWeight,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
