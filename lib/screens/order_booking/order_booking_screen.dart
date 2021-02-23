import 'package:flutter/material.dart';

import 'widgets/whole_form.dart';

class OrderBookingScreen extends StatefulWidget {
  const OrderBookingScreen();

  static const routeName = '/booking';

  @override
  _OrderBookingScreenState createState() => _OrderBookingScreenState();
}

class _OrderBookingScreenState extends State<OrderBookingScreen> {
  // ignore: prefer_final_fields
  int _selectedPageIndex = 0;

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

  void _changePageIndex(int newIndex) {
    setState(() {
      _selectedPageIndex = newIndex;
    });
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.deepPurple[800],
        unselectedItemColor: Colors.deepPurple[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Step 1',
            icon: Icon(Icons.border_all_rounded),
          ),
          BottomNavigationBarItem(
              label: 'Step 2', icon: Icon(Icons.map_rounded)),
          BottomNavigationBarItem(
            label: 'Step 3',
            icon: Icon(Icons.pages_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Step 4',
            icon: Icon(Icons.warning_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Step 5',
            icon: Icon(Icons.monetization_on_rounded),
          ),
        ],
        onTap: (int index) => _changePageIndex(index),
      ),
    );
  }
}
