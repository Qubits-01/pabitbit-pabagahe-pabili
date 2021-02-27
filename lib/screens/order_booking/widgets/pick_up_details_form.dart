import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../models/pick_up_details_model.dart';
import '../../../providers/order_item_provider.dart';
import 'form_group.dart';
import 'text_field_with_icon.dart';

class PickUpDetailsForm extends StatefulWidget {
  const PickUpDetailsForm(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  @override
  _PickUpDetailsFormState createState() => _PickUpDetailsFormState();
}

class _PickUpDetailsFormState extends State<PickUpDetailsForm> {
  final _pickUpSchedController = TextEditingController();
  OrderItemProvider _orderItemProvider;
  PickUpDetailsModel _pickUpDetailsModel;

  @override
  void initState() {
    super.initState();
    print('Initalized');

    _orderItemProvider = Provider.of<OrderItemProvider>(context, listen: false);
    _pickUpDetailsModel = _orderItemProvider.pickUpDetails;

    // Place the init value of the Schedule for Pick-up text field.
    final DateTime pickUpSchedule = _pickUpDetailsModel.pickUpSchedule;

    if (pickUpSchedule != null) {
      _pickUpSchedController.text =
          DateFormat.yMMMMd('en_US').format(pickUpSchedule);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print('Dispose');
  }

  void _presentDatePicker(BuildContext context) {
    // TODO: Modify this datepicker.
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2022),
    ).then((pickedDate) {
      if (pickedDate != null) {
        _pickUpDetailsModel.pickUpSchedule = pickedDate;

        _pickUpSchedController.text =
            DateFormat.yMMMMd('en_US').format(pickedDate);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormGroup(
      widget.screenSize,
      title: widget.title,
      children: <Widget>[
        TextFieldWithIcon(
          icon: Icons.person_outline,
          labelText: 'Contact Name',
          initialValue: _pickUpDetailsModel.contactName,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            _pickUpDetailsModel.contactName = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Contact Name';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.map_outlined,
          labelText: 'Pick-up Address',
          initialValue: _pickUpDetailsModel.pickUpAddress,
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            _pickUpDetailsModel.pickUpAddress = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Pick-up Address';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.phone_android_outlined,
          labelText: 'Contact Number',
          initialValue: _pickUpDetailsModel.contactNumber,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            _pickUpDetailsModel.contactNumber = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide a Contact Number';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.line_weight_outlined,
          labelText: 'Package Weight (in kilograms)',
          initialValue: _pickUpDetailsModel.packageWeight != null
              ? _pickUpDetailsModel.packageWeight.toString()
              : '',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            _pickUpDetailsModel.packageWeight = double.tryParse(value);
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide the Package Weight';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFieldWithIcon(
          icon: Icons.photo_size_select_small_rounded,
          labelText: 'Box Size',
          initialValue: _pickUpDetailsModel.boxSize,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (String value) {},
          onSaved: (String value) {
            _pickUpDetailsModel.boxSize = value;
          },
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please provide the Box Size';
            }

            return null;
          },
        ),
        const SizedBox(height: 10),
        Stack(
          children: [
            TextFieldWithIcon(
              focusNode: AlwaysDisableFocusNode(),
              enableInteractiveSelection: false,
              controller: _pickUpSchedController,
              icon: Icons.access_time_outlined,
              labelText: 'Schedule of Pick-up',
              keyboardType: TextInputType.datetime,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (String value) {},
              onSaved: (String _value) {
                // Do nothing, as the value have already been saved in the
                // datePicker logic.
              },
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please provide the Schedule of Pick-up';
                }

                return null;
              },
            ),
            Positioned.fill(
              child: InkWell(
                onTap: () => _presentDatePicker(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AlwaysDisableFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
