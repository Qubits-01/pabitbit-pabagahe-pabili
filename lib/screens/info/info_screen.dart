import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen();

  static const routeName = '/info-screen';

  @override
  Widget build(BuildContext context) {
    print('Information Screen');

    return const Center(
      child: Text('Information Screen'),
    );
  }
}
