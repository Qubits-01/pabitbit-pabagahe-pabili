import 'package:flutter/material.dart';

class FormGroupHeader extends StatelessWidget {
  const FormGroupHeader(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.9,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: Theme.of(context).textTheme.headline4.fontSize,
          fontWeight: Theme.of(context).textTheme.headline4.fontWeight,
        ),
      ),
    );
  }
}
