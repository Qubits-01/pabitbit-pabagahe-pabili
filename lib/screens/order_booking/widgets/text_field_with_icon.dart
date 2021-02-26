import 'package:flutter/material.dart';

class TextFieldWithIcon extends StatelessWidget {
  const TextFieldWithIcon({
    @required this.icon,
    @required this.labelText,
    @required this.keyboardType,
    @required this.textInputAction,
    @required this.onFieldSubmitted,
    @required this.validator,
    @required this.onSaved,
    // ignore: avoid_init_to_null
    this.initialValue = null,
    // ignore: avoid_init_to_null
    this.controller = null,
    // ignore: avoid_init_to_null
    this.focusNode = null,
    this.enableInteractiveSelection = true,
  });

  final IconData icon;
  final String labelText;
  final String initialValue;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String) onFieldSubmitted;
  final String Function(String) validator;
  final void Function(String) onSaved;
  final TextEditingController controller;
  final bool enableInteractiveSelection;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(icon, size: 30),
          ),
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              enableInteractiveSelection: enableInteractiveSelection,
              controller: controller,
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
      ),
    );
  }
}
