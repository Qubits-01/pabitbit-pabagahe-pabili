import 'package:flutter/material.dart';

class FormNavBarProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  int _index = 0;

  int get index {
    return _index;
  }

  void changeIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }
}
