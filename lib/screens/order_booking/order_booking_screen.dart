import 'package:flutter/material.dart';

import '../../widgets/my_bottom_navigation_bar.dart';

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
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
