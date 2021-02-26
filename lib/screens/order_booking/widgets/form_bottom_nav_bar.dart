import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/form_nav_bar_provider.dart';
import '../../../providers/order_item_provider.dart';

class FormBottomNavBar extends StatelessWidget {
  const FormBottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: Provider.of<FormNavBarProvider>(context).index,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.deepPurple[800],
        unselectedItemColor: Colors.deepPurple[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Step 1',
            icon: Icon(Icons.drive_file_rename_outline),
          ),
          BottomNavigationBarItem(
            label: 'Step 2',
            icon: Icon(Icons.map_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Step 3',
            icon: Icon(Icons.pages_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Step 4',
            icon: Icon(Icons.warning_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Step 5',
            icon: Icon(Icons.monetization_on_rounded),
          ),
        ],
        onTap: (int newIndex) {
          final isFormValid =
              Provider.of<OrderItemProvider>(context, listen: false)
                  .validateForm();

          if (isFormValid) {
            Provider.of<OrderItemProvider>(context, listen: false).saveForm();

            Provider.of<FormNavBarProvider>(context, listen: false)
                .changeIndex(newIndex);
          }
        });
  }
}
