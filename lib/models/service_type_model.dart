import 'package:flutter/foundation.dart';

class ServiceTypeModel {
  const ServiceTypeModel({
    @required this.serviceName,
    @required this.description,
    @required this.serviceTypeEnum,
    this.price,
  });

  final String serviceName;
  final List<String> description;
  final Map<String, double> price;
  final ServicesTypeEnum serviceTypeEnum;
}

enum ServicesTypeEnum {
  pasabay,
  pabitbitPabagahe,
  pabitbitBiahero,
  pabiliPabitbitPabagahe,
  pabiliPabitbitBiahero,
}
