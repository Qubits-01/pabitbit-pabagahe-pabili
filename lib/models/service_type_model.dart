import 'package:flutter/foundation.dart';

import '../data/services_type_data.dart' show ServicesTypeEnum;

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
