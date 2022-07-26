
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PriceRangeScreenProvider extends ChangeNotifier {


void setSelectedItem(var s) {
  selectedPriceUnder18 = s;
  notifyListeners();
}

  String selectedPriceUnder18 = 'Item 1';

  // List of items in our dropdown menu
  var under18PriceList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String selectedPriceAdult = 'Item 1';

  // List of items in our dropdown menu
  var adultPriceList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  void setSelectedAdultPrice(var s) {
    selectedPriceAdult = s;
    notifyListeners();


  }
String selectCopun = 'Item 1';

// List of items in our dropdown menu
var copunPriceList = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
  void setSelectcopun(var s) {
     selectCopun = s;
    notifyListeners();


  }



}
