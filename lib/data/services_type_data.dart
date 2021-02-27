import '../models/service_type_model.dart';

final List<ServiceTypeModel> servicesTypeData = [
  const ServiceTypeModel(
    serviceName: '🥉  Pasabay',
    description: [
      '✔ 1 to 19 kilograms only',
      '✔ ¥ 1,200 per kilogram',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pasabay,
  ),
  const ServiceTypeModel(
    serviceName: '🥈  Pabitbit (Pabagahe)',
    description: [
      '✔ 20 kilograms and above',
      '✔ ¥ 1,200 per kilogram',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabitbitPabagahe,
  ),
  const ServiceTypeModel(
    serviceName: '🥇  Pabitbit (Biahero)',
    description: [
      '✔ ¥ 1,000 per kilogram (futsu mono)',
      '✔ ¥ 1,500 per kilogram (dame mono)',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabitbitBiahero,
  ),
  const ServiceTypeModel(
    serviceName: '🏅  Pabili at Pabitbit (Pabagahe)',
    description: [
      '✔ ¥ 50 per kilogram (Pabili service fee)',
      '✔ ¥ 1,200 per kilogram (Pabitbit service fee)',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabiliPabitbitPabagahe,
  ),
  const ServiceTypeModel(
    serviceName: '🏆  Pabili at Pabitbit (Biahero)',
    description: [
      '✔ ¥ 500 per kilogram (Pabili service fee)',
      '✔ ¥ 1,000 per kilogram (futsu mono)',
      '✔ ¥ 1,500 per kilogram (dame mono)',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabiliPabitbitBiahero,
  ),
];
