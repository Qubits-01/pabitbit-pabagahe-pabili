import 'package:flutter/material.dart';

class OrderBookingScreen extends StatelessWidget {
  const OrderBookingScreen();

  static const routeName = '/booking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book With Us')),
      body: const Center(
        child: Text('Booking Screen'),
      ),
    );
  }
}
