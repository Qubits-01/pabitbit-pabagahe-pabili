import 'package:flutter/material.dart';

class LowerListTile extends StatelessWidget {
  const LowerListTile(this.screenSize);

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
            fontSize: Theme.of(context).textTheme.headline6.fontSize,
          ),
        ),
        subtitle: const Text('We offer various services'),
        trailing: IconButton(
          icon: Icon(
            Icons.info,
            size: screenSize.width * 0.06,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
