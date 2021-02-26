import 'package:flutter/material.dart';
import 'package:pabitbit_pabagahe_pabili/providers/main_nav_bar_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen();

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    print('Profile Screen');

    return Container(
      color: Colors.deepPurple[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/coming-soon.jpg'),
          const SizedBox(height: 15),
          Text(
            'Profile Screen',
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
