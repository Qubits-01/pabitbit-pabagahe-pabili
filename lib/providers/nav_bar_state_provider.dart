import 'package:flutter/foundation.dart';

class NavBarStateProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  int _state = 0;

  int get state {
    return _state;
  }

  void changeState(int newState) {
    _state = newState;
    print('provider: $_state');
    notifyListeners();
  }
}
