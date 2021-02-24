import 'package:flutter/material.dart';

import '../../order_booking/order_booking_screen.dart';

class UpperCardLowerListTile extends StatelessWidget {
  const UpperCardLowerListTile(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(OrderBookingScreen.routeName),
      child: ListTile(
        leading: Icon(
          Icons.add_shopping_cart_outlined,
          size: screenSize.width * 0.09,
        ),
        title: Text(
          'Book Your Order Now',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headline5.fontSize,
          ),
        ),
        subtitle: const Text('We offer various services'),
        trailing: IconButton(
          icon: Icon(
            Icons.more_vert,
            size: screenSize.width * 0.06,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
