import 'package:flutter/material.dart';

class AppSettingsScreen extends StatelessWidget {
  const AppSettingsScreen();

  static const routeName = '/app-settings';

  @override
  Widget build(BuildContext context) {
    print('App Settings SCreen');

    return const Center(
      child: Text('App Settings Screen'),
    );
  }
}
