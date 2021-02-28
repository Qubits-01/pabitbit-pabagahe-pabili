import 'package:flutter/material.dart';

class TextFieldOutputs extends StatelessWidget {
  const TextFieldOutputs(this.outputs);

  final List<String> outputs;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ...outputs
              .map(
                (output) => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    output,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline6.fontSize,
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
