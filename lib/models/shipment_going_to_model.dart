import 'package:flutter/foundation.dart';

class ShipmentGoingToModel {
  ShipmentGoingToModel({
    @required this.fullName,
    @required this.completeAddress,
    @required this.prefectureOrCity,
    @required this.postalCode,
    @required this.contactNumber,
  });

  String fullName;
  String completeAddress;
  String prefectureOrCity;
  int postalCode;
  int contactNumber;
}

// ignore: type_annotate_public_apis
var initValues = ShipmentGoingToModel(
  fullName: '',
  completeAddress: '',
  prefectureOrCity: '',
  postalCode: null,
  contactNumber: null,
);
