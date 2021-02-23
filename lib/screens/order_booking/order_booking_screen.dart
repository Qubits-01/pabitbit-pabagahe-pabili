import 'package:flutter/material.dart';

import 'widgets/whole_form.dart';

class OrderBookingScreen extends StatelessWidget {
  const OrderBookingScreen();

  static const routeName = '/booking';

  Future<void> _showContactInformation(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Our Contact Information'),
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Message us for questions.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 10),
                Text(
                  'Or call us:',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '(02) 8281-7086',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '090-5724-3152',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '0936-799-3086',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book With Us'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showContactInformation(context),
          ),
        ],
      ),
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
