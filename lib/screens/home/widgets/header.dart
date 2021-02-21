import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.3,
      width: screenSize.width,
      padding: const EdgeInsets.only(
        left: 15,
        top: 60,
        right: 15,
        bottom: 15,
      ),
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome User!',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline3.fontSize,
              fontWeight: Theme.of(context).textTheme.headline3.fontWeight,
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
