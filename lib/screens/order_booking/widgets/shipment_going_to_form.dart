import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/shipment_going_to_model.dart';
import '../../../providers/order_item_provider.dart';
import 'form_group.dart';
import 'text_field_with_icon.dart';

class ShipmentGoingToForm extends StatelessWidget {
  const ShipmentGoingToForm(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    ShipmentGoingToModel shipmentGoingToModel =
        Provider.of<OrderItemProvider>(context, listen: false).shipmentGoingTo;

    return FormGroup(
      screenSize,
      title: title,
      children: <Widget>[
        TextFieldWithIcon(
          icon: Icons.person_outline,
          labelText: 'Full Name',
          initialValue: shipmentGoingToModel.fullName,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            shipmentGoingToModel.fullName = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Full Name';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.map_outlined,
          labelText: 'Complete Address',
          initialValue: shipmentGoingToModel.completeAddress,
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            shipmentGoingToModel.completeAddress = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Complete Address';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.location_city_outlined,
          labelText: 'Prefecture or City',
          initialValue: shipmentGoingToModel.prefectureOrCity,
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            shipmentGoingToModel.prefectureOrCity = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Prefecture or City';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.mail_outline,
          labelText: 'Postal Code',
          initialValue: shipmentGoingToModel.postalCode,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            shipmentGoingToModel.postalCode = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Postal Code';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.phone_android_outlined,
          labelText: 'Contact Number',
          initialValue: shipmentGoingToModel.contactNumber,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            shipmentGoingToModel.contactNumber = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Contact Number';
            }

            return null;
          },
        ),
      ],
    );
  }
}
