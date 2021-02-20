import 'package:flutter/material.dart';

class GreetingsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.3,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 15, top: 60, right: 15, bottom: 15),
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome User!',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline4.fontSize,
              fontWeight: Theme.of(context).textTheme.headline4.fontWeight,
              color: Colors.white,
            ),
          ),
          Text(
            'P3 is ready to serve you.',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
