import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_item_provider.dart';
import 'form_group.dart';
import 'text_field_with_icon.dart';

class PickUpDetailsForm extends StatelessWidget {
  PickUpDetailsForm(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;
  // final formKey = GlobalKey<FormState>();

  // void saveForm() {
  //   formKey.currentState.save();
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_locals
    var orderItemProvider = Provider.of<OrderItemProvider>(context);

    return FormGroup(
      screenSize,
      title: title,
      children: <Widget>[
        TextFieldWithIcon(
          icon: Icons.person_outline,
          labelText: 'Contact Name',
          initialValue: orderItemProvider.pickUpDetails.contactName,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            print('Contact Name SAVED!');
            orderItemProvider.pickUpDetails.contactName = value;
          },
          validator: (String value) {
            return '';
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.map_outlined,
          labelText: 'Pick-up Address',
          initialValue: orderItemProvider.pickUpDetails.pickUpAddress,
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.pickUpDetails.pickUpAddress = value;
          },
          validator: (String value) {
            return '';
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.phone_android_outlined,
          labelText: 'Contact Number',
          initialValue: orderItemProvider.pickUpDetails.contactNumber,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.pickUpDetails.contactNumber = value;
          },
          validator: (String value) {
            return '';
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.line_weight_outlined,
          labelText: 'Package Weight (in kilograms)',
          initialValue:
              orderItemProvider.pickUpDetails.packageWeight.toString(),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.pickUpDetails.packageWeight =
                double.parse('69.00');
          },
          validator: (String value) {
            return '';
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.photo_size_select_small_rounded,
          labelText: 'Box Size',
          initialValue: orderItemProvider.pickUpDetails.boxSize,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.pickUpDetails.boxSize = value;
          },
          validator: (String value) {
            return '';
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.access_time_outlined,
          labelText: 'Schedule of Pick-up',
          initialValue:
              orderItemProvider.pickUpDetails.pickUpSchedule.toString(),
          keyboardType: TextInputType.datetime,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.pickUpDetails.pickUpSchedule =
                DateTime.parse('2021-02-26 10:18:19.184');
          },
          validator: (String value) {
            return '';
          },
        ),
      ],
    );
  }
}
