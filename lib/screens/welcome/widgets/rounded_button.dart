import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundedButtons extends StatelessWidget {
  const RoundedButtons({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    // size provides the total height and width of the screen.
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          color: color,
          onPressed: press as VoidCallback,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
