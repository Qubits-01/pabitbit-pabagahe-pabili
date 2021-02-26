import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen();

  static const routeName = '/info-screen';

  @override
  Widget build(BuildContext context) {
    print('Information Screen');

    return Container(
      color: Colors.deepPurple[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/coming-soon.jpg'),
          const SizedBox(height: 15),
          Text(
            'Information Screen',
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
