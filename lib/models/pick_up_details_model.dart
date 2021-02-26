import 'package:flutter/cupertino.dart';

class PickUpDetailsModel {
  PickUpDetailsModel({
    @required this.contactName,
    @required this.pickUpAddress,
    @required this.contactNumber,
    @required this.packageWeight,
    @required this.boxSize,
    @required this.pickUpSchedule,
  });

  String contactName;
  String pickUpAddress;
  String contactNumber;
  double packageWeight;
  String boxSize;
  DateTime pickUpSchedule;
}

// ignore: type_annotate_public_apis
var initValues = PickUpDetailsModel(
  contactName: '',
  pickUpAddress: '',
  contactNumber: '',
  packageWeight: null,
  boxSize: null,
  pickUpSchedule: null,
);
