import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_item_provider.dart';
import '../../../providers/form_nav_bar_provider.dart';
import 'item_reminders_form.dart';
import 'order_summary.dart';
import 'package_details_form.dart';
import 'pick_up_details_form.dart';
import 'shipment_going_to_form.dart';

class WholeForm extends StatelessWidget {
  const WholeForm(this.screenSize);

  final Size screenSize;

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Form(
              key: Provider.of<OrderItemProvider>(context, listen: false)
                  .formKey,
              child: Consumer<FormNavBarProvider>(
                builder: (context, navBarIndex, child) =>
                    changeFormPage(screenSize, navBarIndex.index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
