import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60.0,
      backgroundColor: Colors.deepPurple[50],
      animationDuration: const Duration(milliseconds: 400),
      items: const <Widget>[
        Icon(Icons.add, size: 30),
        Icon(Icons.list, size: 30),
        Icon(Icons.compare_arrows, size: 30),
        Icon(Icons.delivery_dining, size: 30),
      ],
      onTap: (index) {
        // Handle button tap.
        print(index);
      },
    );
  }
}
