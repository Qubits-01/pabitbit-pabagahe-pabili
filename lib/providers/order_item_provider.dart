import 'package:flutter/material.dart';

import '../models/pick_up_details_model.dart';

class OrderItemProvider with ChangeNotifier {
  OrderItemProvider({
    @required this.id,
    @required this.date,
    @required this.pickUpDetails,
    @required this.shipmentGoingTo,
    @required this.packageDetails,
    this.isMsds = false,
    this.price = 0.00,
  });

  String id;
  DateTime date;
  double price;
  PickUpDetailsModel pickUpDetails;
  Map<String, dynamic> shipmentGoingTo;
  Map<String, dynamic> packageDetails;
  bool isMsds;
  final formKey = GlobalKey<FormState>();

  bool validateForm() {
    // Validate the current form page.
    final isValid = formKey.currentState.validate();

    return isValid;
  }

  void saveForm() {
    formKey.currentState.save();
  }
}
