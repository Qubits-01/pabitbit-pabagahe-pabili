import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/pick_up_details_model.dart' as pick_up_details
    show initValues;
import '../../providers/order_item_provider.dart';
import '../../providers/form_nav_bar_provider.dart';
import 'widgets/form_bottom_nav_bar.dart';
import 'widgets/item_reminders_form.dart';
import 'widgets/order_summary.dart';
import 'widgets/package_details_form.dart';
import 'widgets/pick_up_details_form.dart';
import 'widgets/shipment_going_to_form.dart';

class OrderBookingScreen extends StatelessWidget {
  OrderBookingScreen();

  static const routeName = '/booking';

  Future<void> showContactInformation(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Our Contact Information'),
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 25, top: 10, right: 20, bottom: 20),
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

  Future<bool> onBackPressed(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Back to Main Screen'),
        content: const Text('Any unsave data will be lost, continue anyway?'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('YES'),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('NO'),
          ),
        ],
      ),
    );
  }

  Widget changeFormPage(Size screenSize, int navBarIndex) {
    switch (navBarIndex) {
      case 0:
        return PickUpDetailsForm(screenSize, title: 'Pick-up Details');
        break;
      case 1:
        return ShipmentGoingToForm(screenSize, title: 'Shipment Going To');
        break;
      case 2:
        return PackageDetailsForm(screenSize, title: 'Package Details');
        break;
      case 3:
        return ItemRemindersForm(screenSize, title: 'Item Reminders');
        break;
      case 4:
        return OrderSummary(screenSize, title: 'Order Summary');
        break;
      default:
        return PickUpDetailsForm(screenSize, title: 'Pick-up Details');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FormNavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OrderItemProvider(
            id: null,
            date: null,
            pickUpDetails: pick_up_details.initValues,
            shipmentGoingTo: null,
            packageDetails: null,
          ),
        ),
      ],
      child: WillPopScope(
        onWillPop: () => onBackPressed(context),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Book With Us'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.contact_phone_rounded),
                onPressed: () => showContactInformation(context),
              ),
            ],
          ),
          body: Consumer<OrderItemProvider>(
            builder: (context, orderItemProvider, child) => Form(
              key: orderItemProvider.formKey,
              child: Container(
                // This sets the background color.
                width: screenSize.width,
                height: screenSize.height,
                alignment: Alignment.topCenter,
                color: Colors.deepPurple[50],
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Consumer<FormNavBarProvider>(
                          builder: (context, navBarIndex, child) =>
                              changeFormPage(screenSize, navBarIndex.index),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: FormBottomNavBar(),
        ),
      ),
    );
  }
}
