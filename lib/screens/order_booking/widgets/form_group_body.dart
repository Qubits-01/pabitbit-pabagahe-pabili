import 'package:flutter/material.dart';

class FormGroupBody extends StatelessWidget {
  const FormGroupBody({@required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
