import 'package:flutter/material.dart';

class NavBarStateProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  int _state = 0;

  int get state {
    return _state;
  }

  void changeState(int newState) {
    _state = newState;
    notifyListeners();
  }

  void pushScreen(BuildContext context, String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
