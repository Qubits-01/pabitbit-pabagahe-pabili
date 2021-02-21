import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 53.0,
      backgroundColor: Colors.deepPurple[50],
      animationDuration: const Duration(milliseconds: 400),
      items: const <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.calculate, size: 30),
        Icon(Icons.person, size: 30),
        Icon(Icons.settings, size: 30),
        Icon(Icons.info, size: 30),
      ],
      onTap: (index) {
        // Handle button tap.
        print(index);
      },
    );
  }
}
