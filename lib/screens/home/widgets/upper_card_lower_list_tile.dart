import 'package:flutter/material.dart';

class UpperCardLowerListTile extends StatelessWidget {
  const UpperCardLowerListTile(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Icon(
          Icons.delivery_dining,
          size: screenSize.width * 0.09,
        ),
        title: Text(
          'Book Your Order Now',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headline4.fontSize,
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