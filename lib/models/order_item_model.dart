import 'package:flutter/foundation.dart';

class OrderItemModel {
  const OrderItemModel({
    @required this.id,
    @required this.date,
    @required this.price,
    @required this.pickUpDetails,
    @required this.shipmentGoingTo,
    @required this.packageDetails,
    @required this.isMsds,
  });

  final String id;
  final DateTime date;
  final double price;
  final Map<String, dynamic> pickUpDetails;
  final Map<String, dynamic> shipmentGoingTo;
  final Map<String, dynamic> packageDetails;
  final bool isMsds;
}
