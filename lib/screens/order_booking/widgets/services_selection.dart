import 'package:flutter/material.dart';

class ServicesSelection extends StatefulWidget {
  const ServicesSelection();

  @override
  _ServicesSelectionState createState() => _ServicesSelectionState();
}

enum ServicesType {
  pasabay,
  pabitbitPabagahe,
  pabitbitBiahero,
  pabiliPabitbitPabagahe,
  pabiliPabitbitBiahero,
}

class _ServicesSelectionState extends State<ServicesSelection> {
  ServicesType _serviceType = ServicesType.pasabay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // ListTile(
        //   title: const Text('Pasabay'),
        //   leading: Radio(
        //     value: ServicesType.pasabay,
        //     groupValue: _serviceType,
        //     onChanged: (ServicesType value) {
        //       setState(() {
        //         _serviceType = value;
        //       });
        //     },
        //   ),
        // ),
        RadioListTile(
          title: const Text('Pasabay'),
          secondary: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          value: ServicesType.pasabay,
          groupValue: _serviceType,
          onChanged: (ServicesType value) {
            setState(() {
              _serviceType = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('Pabibit (Pabagahe)'),
          secondary: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          value: ServicesType.pabitbitPabagahe,
          groupValue: _serviceType,
          onChanged: (ServicesType value) {
            setState(() {
              _serviceType = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('Pabibit (Biahero)'),
          secondary: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          value: ServicesType.pabitbitBiahero,
          groupValue: _serviceType,
          onChanged: (ServicesType value) {
            setState(() {
              _serviceType = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('Pabili at Pabibit (Pabagahe)'),
          secondary: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          value: ServicesType.pabiliPabitbitPabagahe,
          groupValue: _serviceType,
          onChanged: (ServicesType value) {
            setState(() {
              _serviceType = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('Pabili at Pabitbit (Biahero)'),
          secondary: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
          value: ServicesType.pabiliPabitbitBiahero,
          groupValue: _serviceType,
          onChanged: (ServicesType value) {
            setState(() {
              _serviceType = value;
            });
          },
        ),
      ],
    );
  }
}
