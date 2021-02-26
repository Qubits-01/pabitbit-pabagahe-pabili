import 'package:flutter/material.dart';

class RateCalculatorScreen extends StatelessWidget {
  const RateCalculatorScreen();

  static const routeName = '/rate-calculator';

  @override
  Widget build(BuildContext context) {
    print('Rate Calculator Screen');

    return Container(
      color: Colors.deepPurple[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/coming-soon.jpg'),
          const SizedBox(height: 15),
          Text(
            'Rate Calculator Screen',
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
