import 'package:flutter/material.dart';

class AppSettingsScreen extends StatelessWidget {
  const AppSettingsScreen();

  static const routeName = '/app-settings';

  @override
  Widget build(BuildContext context) {
    print('App Settings SCreen');

    return Container(
      color: Colors.deepPurple[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/coming-soon.jpg'),
          const SizedBox(height: 15),
          Text(
            'App Settings SCreen',
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
