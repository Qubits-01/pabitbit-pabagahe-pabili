import 'package:flutter/material.dart';

class TextFieldLabels extends StatelessWidget {
  const TextFieldLabels(this.textFieldLabels);

  final List<String> textFieldLabels;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ...textFieldLabels
            .map(
              (label) => Text(
                label,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                  fontWeight: Theme.of(context).textTheme.headline6.fontWeight,
                  color: Colors.black54,
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
