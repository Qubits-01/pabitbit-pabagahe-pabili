import 'package:flutter/material.dart';

import 'widgets/whole_form.dart';

class OrderBookingScreen extends StatelessWidget {
  const OrderBookingScreen();

  static const routeName = '/booking';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Book With Us')),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        alignment: Alignment.topCenter,
        color: Colors.deepPurple[50],
        child: WholeForm(screenSize),
      ),
    );
  }
}
