import 'package:barbar_app/personal%20information/PersonalInformation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PriceRangeScreenProvider extends ChangeNotifier {
  // List<String> _items = ['5', '10', '15', '20', '25'];
  // String _selectedItem;
  //
  // List<String> get items => _items;
  // String get selected => _selectedItem;
  //
  // void setSelectedItem(String s) {
  //   _selectedItem = s;
  //   notifyListeners();
  // }

  Item mySelectedUser;
  List<Item> users = <Item>[
    const Item('5',Icon(Icons.arrow_right,color:  const Color(0xFF167F67),)),
    const Item('10',Icon(Icons.arrow_right,color:  const Color(0xFF167F67),)),
    const Item('15',Icon(Icons.arrow_right,color:  const Color(0xFF167F67),)),
    const Item('20',Icon(Icons.arrow_right,color:  const Color(0xFF167F67),)),
  ];


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



}
