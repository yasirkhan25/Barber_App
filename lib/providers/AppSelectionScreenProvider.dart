import 'package:flutter/cupertino.dart';

class SelectionProvider extends ChangeNotifier {
  int value = null;
  bool isvisible = false;
  setName(value) {
    if (value.length > 4) {
      isvisible = true;
      notifyListeners();
    } else {
      isvisible = false;
      notifyListeners();
    }
  }

  getValue(int x){
    value = x;
    notifyListeners();
  }
}
