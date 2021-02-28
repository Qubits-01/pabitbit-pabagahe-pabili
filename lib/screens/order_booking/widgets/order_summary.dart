import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../models/service_type_model.dart' show ServicesTypeEnum;
import '../../../models/pick_up_details_model.dart';
import '../../../models/shipment_going_to_model.dart';
import '../../../providers/order_item_provider.dart';
import 'form_group.dart';
import 'inside_form_header.dart';
import 'text_field_labels.dart';
import 'text_field_outputs.dart';

class OrderSummary extends StatelessWidget {
  OrderSummary(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  final textFieldLabels = {
    'pickUpDetails': [
      'Contact Name',
      'Pick-up Address',
      'Contact Number',
      'Package Weight',
      'Box Size',
      'Pick-up Schedule',
    ],
    'shipmentGoingTo': [
      'Full Name',
      'Complete Address',
      'Prefecture/City',
      'Postal Code',
      'Contact Number',
    ],
    'packageDetails': [
      'Package Weight',
      'Service Type',
    ],
    'itemReminders': [
      'Needs MSDS',
    ],
    'totalCost': [
      'Service Fee',
      'MSDS Fee',
      'Total',
    ],
  };

  String outputServiceType(ServicesTypeEnum serviceType) {
    switch (serviceType) {
      case ServicesTypeEnum.pasabay:
        return 'Pasabay';
        break;
      case ServicesTypeEnum.pabitbitPabagahe:
        return 'Pabitbit (Pabagahe)';
        break;
      case ServicesTypeEnum.pabitbitBiahero:
        return 'Pabitbit (Biahero)';
        break;
      case ServicesTypeEnum.pabiliPabitbitPabagahe:
        return 'Pabili at Pabitbit (Pabagahe)';
        break;
      case ServicesTypeEnum.pabiliPabitbitBiahero:
        return 'Pabili at Pabitbit (Biahero)';
        break;
      default:
        return 'Pasabay';
        break;
    }
  }

  // List<String> determineTotalCostLabels(ServicesTypeEnum serviceType) {
  //   switch (serviceType) {
  //     case ServicesTypeEnum.pasabay:
  //       return ['Pasabay Fee'];
  //       break;
  //     case ServicesTypeEnum.pabitbitPabagahe:
  //       return ['Pabitbit Fee'];
  //       break;
  //     case ServicesTypeEnum.pabitbitBiahero:
  //       return ['Futsu Mono', 'Dame Mono'];
  //       break;
  //     case ServicesTypeEnum.pabiliPabitbitPabagahe:
  //       return 'Pabili at Pabitbit (Pabagahe)';
  //       break;
  //     case ServicesTypeEnum.pabiliPabitbitBiahero:
  //       return 'Pabili at Pabitbit (Biahero)';
  //       break;
  //     default:
  //       return 'Pasabay';
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final orderItemProvider =
        Provider.of<OrderItemProvider>(context, listen: false);
    final PickUpDetailsModel pickUpDetails = orderItemProvider.pickUpDetails;
    final ShipmentGoingToModel shipmentGoingTo =
        orderItemProvider.shipmentGoingTo;

    return FormGroup(
      screenSize,
      title: title,
      children: <Widget>[
        const InsideFormHeader('Pick-up Details'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextFieldLabels(textFieldLabels['pickUpDetails']),
            SizedBox(width: screenSize.width * 0.05),
            TextFieldOutputs([
              pickUpDetails.contactName,
              pickUpDetails.pickUpAddress,
              pickUpDetails.contactNumber,
              pickUpDetails.packageWeight.toString(),
              pickUpDetails.boxSize,
              DateFormat.yMMMMd('en_US').format(pickUpDetails.pickUpSchedule),
            ]),
          ],
        ),
        const Divider(),
        const InsideFormHeader('Shipment Going To'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextFieldLabels(textFieldLabels['shipmentGoingTo']),
            SizedBox(width: screenSize.width * 0.05),
            TextFieldOutputs([
              shipmentGoingTo.fullName,
              shipmentGoingTo.completeAddress,
              shipmentGoingTo.prefectureOrCity,
              shipmentGoingTo.postalCode,
              shipmentGoingTo.contactNumber,
            ]),
          ],
        ),
        const Divider(),
        const InsideFormHeader('Package Details'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextFieldLabels(textFieldLabels['packageDetails']),
            SizedBox(width: screenSize.width * 0.05),
            TextFieldOutputs([
              orderItemProvider.packageWeight.toString(),
              outputServiceType(orderItemProvider.serviceType),
            ]),
          ],
        ),
        const Divider(),
        const InsideFormHeader('Item Reminders'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextFieldLabels(textFieldLabels['itemReminders']),
            SizedBox(width: screenSize.width * 0.05),
            TextFieldOutputs([
              if (orderItemProvider.isMsds) 'Yes' else 'No',
            ]),
          ],
        ),
        const Divider(),
        const InsideFormHeader('Total Cost'),
      ],
    );
  }
}
