import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ChooseProfessionProvider extends ChangeNotifier {

  int value =0;
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
