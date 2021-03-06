import 'package:flutter/material.dart';

import '../../order_booking/order_booking_screen.dart';

class UpperImageHolder extends StatelessWidget {
  const UpperImageHolder();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // So that the image matches the card's borderRadius.
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.asset(
            'assets/images/courier-carrying-order-illustration.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Overlays an InkWell on the image.
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              splashColor: Colors.purpleAccent,
              onTap: () =>
                  Navigator.of(context).pushNamed(OrderBookingScreen.routeName),
            ),
          ),
        ),
      ],
    );
  }
}
