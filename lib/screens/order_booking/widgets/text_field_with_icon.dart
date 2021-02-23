import 'package:flutter/material.dart';

class TextFieldWithIcon extends StatelessWidget {
  const TextFieldWithIcon({
    @required this.icon,
    @required this.labelText,
    @required this.keyboardType,
    @required this.textInputAction,
  });

  final IconData icon;
  final String labelText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(icon, size: 30),
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: labelText,
              contentPadding: const EdgeInsets.all(0),
            ),
            keyboardType: keyboardType,
            textInputAction: textInputAction,
          ),
        ),
      ],
    );
  }
}
