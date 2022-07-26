import 'package:flutter/cupertino.dart';

class CreatAccountScreenProvider extends ChangeNotifier {
  bool isChecked = false;
  set setChecked(bool value) {
    isChecked = value;
    notifyListeners();
  }
  bool get getChecked {
    return isChecked;
  }
}