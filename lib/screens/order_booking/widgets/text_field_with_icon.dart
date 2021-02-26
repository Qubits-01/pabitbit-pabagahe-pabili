import 'package:flutter/material.dart';

class TextFieldWithIcon extends StatelessWidget {
  const TextFieldWithIcon({
    @required this.icon,
    @required this.labelText,
    @required this.initialValue,
    @required this.keyboardType,
    @required this.textInputAction,
    @required this.onFieldSubmitted,
    @required this.validator,
    @required this.onSaved,
  });

  final IconData icon;
  final String labelText;
  final String initialValue;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String) onFieldSubmitted;
  final String Function(String) validator;
  final void Function(String) onSaved;

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
            initialValue: initialValue,
            decoration: InputDecoration(
              labelText: labelText,
              contentPadding: const EdgeInsets.all(0),
            ),
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator,
            onSaved: onSaved,
          ),
        ),
      ],
    );
  }
}
