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
    price: {
      'basic': 1200.00,
    },
  ),
  const ServiceTypeModel(
    serviceName: '🥈  Pabitbit (Pabagahe)',
    description: [
      '✔ 20 kilograms and above',
      '✔ ¥ 1,200 per kilogram',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabitbitPabagahe,
    price: {
      'basic': 1200.00,
    },
  ),
  const ServiceTypeModel(
    serviceName: '🥇  Pabitbit (Biahero)',
    description: [
      '✔ ¥ 1,000 per kilogram (futsu mono)',
      '✔ ¥ 1,500 per kilogram (dame mono)',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabitbitBiahero,
    price: {
      'futsuMono': 1000.00,
      'dameMono': 1500.00,
    },
  ),
  const ServiceTypeModel(
    serviceName: '🏅  Pabili at Pabitbit (Pabagahe)',
    description: [
      '✔ ¥ 50 per kilogram (Pabili service fee)',
      '✔ ¥ 1,200 per kilogram (Pabitbit service fee)',
      '',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabiliPabitbitPabagahe,
    price: {
      'pabiliServiceFee': 50.00,
      'pabitbitServiceFee': 1200.00,
    },
  ),
  const ServiceTypeModel(
    serviceName: '🏆  Pabili at Pabitbit (Biahero)',
    description: [
      '✔ ¥ 500 per kilogram (Pabili service fee)',
      '✔ ¥ 1,000 per kilogram (futsu mono)',
      '✔ ¥ 1,500 per kilogram (dame mono)',
    ],
    serviceTypeEnum: ServicesTypeEnum.pabiliPabitbitBiahero,
    price: {
      'pabiliServiceFee': 500.00,
      'futsuMono': 1000.00,
      'dameMono': 1500.00,
    },
  ),
];
