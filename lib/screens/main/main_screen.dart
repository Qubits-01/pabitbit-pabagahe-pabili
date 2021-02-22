import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/nav_bar_state_provider.dart';
import '../../widgets/my_bottom_navigation_bar.dart';
import '../overview/overview_screen.dart';
import '../rate_calculator/rate_calculator_screen.dart';
import '../profile/profile_screen.dart';
import '../app_settings/app_settings_screen.dart';
import '../info/info_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();

  static const routeName = '/';

  Widget changeScreen(int navBarState) {
    switch (navBarState) {
      case 0:
        return OverviewScreen();
        break;
      case 1:
        return RateCalculatorScreen();
        break;
      case 2:
        return ProfileScreen();
        break;
      case 3:
        return AppSettingsScreen();
        break;
      case 4:
        return InfoScreen();
        break;
      default:
        return OverviewScreen();
        break;
    }
  }

  Future<bool> _onBackPressed(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit the App'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('YES'),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('NO'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Main Screen');

    return ChangeNotifierProvider(
      create: (context) => NavBarStateProvider(),
      child: WillPopScope(
        onWillPop: () => _onBackPressed(context),
        child: Scaffold(
          body: Consumer<NavBarStateProvider>(
            builder: (context, navBarState, child) {
              return changeScreen(navBarState.state);
            },
          ),
          bottomNavigationBar: const MyBottomNavigationBar(),
        ),
      ),
    );
  }
}
