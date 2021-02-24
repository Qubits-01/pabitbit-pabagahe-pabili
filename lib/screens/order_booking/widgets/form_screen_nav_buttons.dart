import 'package:flutter/material.dart';

class FormScreenNavButtons extends StatelessWidget {
  const FormScreenNavButtons(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton.icon(
          padding: const EdgeInsets.only(right: 5),
          splashColor: Theme.of(context).splashColor,
          icon: Icon(
            Icons.arrow_left_outlined,
            color: Theme.of(context).primaryColor,
          ),
          label: Text(
            'Back',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.deepPurple, width: 1.5),
          ),
          onPressed: () {},
        ),
        SizedBox(width: screenSize.width * 0.1),
        FlatButton.icon(
          padding: const EdgeInsets.only(left: 5),
          splashColor: Theme.of(context).splashColor,
          icon: Text(
            'Next',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
            ),
          ),
          label: Icon(
            Icons.arrow_right_outlined,
            color: Theme.of(context).primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.deepPurple, width: 1.5),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
