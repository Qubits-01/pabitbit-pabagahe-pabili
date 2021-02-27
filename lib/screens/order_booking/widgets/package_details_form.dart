import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_item_provider.dart';
import 'form_group.dart';
import 'services_selection.dart';
import 'text_field_with_icon.dart';

class PackageDetailsForm extends StatelessWidget {
  const PackageDetailsForm(
    this.screenSize, {
    @required this.title,
  });

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    final orderItemProvider =
        Provider.of<OrderItemProvider>(context, listen: false);

    return FormGroup(
      screenSize,
      title: title,
      children: <Widget>[
        TextFieldWithIcon(
          icon: Icons.line_weight_outlined,
          labelText: 'Package Weight (in kilograms)',
          initialValue: orderItemProvider.packageWeight != null
              ? orderItemProvider.packageWeight.toString()
              : '',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            orderItemProvider.packageWeight = double.tryParse(value);
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Package Weight';
            }

            return null;
          },
        ),
        const SizedBox(height: 5),
        const Divider(),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.view_carousel_outlined, size: 30),
            ),
            Text(
              'Service Type',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize),
            ),
          ],
        ),
        ServicesSelection(),
      ],
    );
  }
}
