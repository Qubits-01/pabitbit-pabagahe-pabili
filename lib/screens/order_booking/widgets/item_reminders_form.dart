import 'package:flutter/material.dart';

import 'form_group.dart';
import 'msds_items_reminder.dart';
import 'prohibited_items_reminder.dart';

class ItemRemindersForm extends StatelessWidget {
  const ItemRemindersForm(this.screenSize, {@required this.title});

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FormGroup(
      screenSize,
      title: title,
      formFields: <Widget>[
        MsdsItemsReminder(),
        const Divider(),
        ProhibitedItemsReminder(),
      ],
    );
  }
}
