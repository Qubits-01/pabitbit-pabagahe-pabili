import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/service_type_model.dart' show ServicesTypeEnum;
import '../../../data/services_type_data.dart';
import '../../../providers/order_item_provider.dart';

// TODO: Maybe try to make this code (this file) more efficient.
class ServicesSelection extends StatefulWidget {
  const ServicesSelection();

  @override
  _ServicesSelectionState createState() => _ServicesSelectionState();
}

class _ServicesSelectionState extends State<ServicesSelection> {
  OrderItemProvider _orderItemProvider;
  // ignore: prefer_final_fields
  ServicesTypeEnum _serviceType = ServicesTypeEnum.pasabay;

  @override
  void initState() {
    super.initState();

    _orderItemProvider = Provider.of<OrderItemProvider>(context, listen: false);

    if (_orderItemProvider.serviceType != null) {
      _serviceType = _orderItemProvider.serviceType;
    }
  }

  Future<bool> _showServiceInformation(
    BuildContext context, {
    @required String serviceName,
    @required List<String> description,
  }) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(serviceName),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  description[0],
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 10),
                Text(
                  description[1],
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 10),
                Text(
                  description[2],
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

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
        ...servicesTypeData
            .map((serviceType) => RadioListTile(
                  title: Text(
                    serviceType.serviceName.substring(3),
                  ),
                  secondary: IconButton(
                    icon: const Icon(Icons.info_outline),
                    onPressed: () => _showServiceInformation(
                      context,
                      serviceName: serviceType.serviceName,
                      description: serviceType.description,
                    ),
                  ),
                  value: serviceType.serviceTypeEnum,
                  groupValue: _serviceType,
                  onChanged: (ServicesTypeEnum value) {
                    _orderItemProvider.serviceType = value;

                    setState(() {
                      _serviceType = value;
                    });
                  },
                ))
            .toList(),
      ],
    );
  }
}
