import 'package:flutter/material.dart';

import 'form_group_divider.dart';
import 'package_details.dart';
import 'pick_up_details.dart';
import 'shipment_going_to.dart';

class WholeForm extends StatelessWidget {
  const WholeForm(this.screenSize);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            PickUpDetails(screenSize, title: 'Pick-up Details'),
            const FormGroupDivider(),
            ShipmentGoingTo(screenSize, title: 'Shipment Going to'),
            const FormGroupDivider(),
            PackageDetails(screenSize, title: 'Package Details'),
          ],
        ),
      ),
    );
  }
}
