import 'package:flutter/material.dart';

class CustomTextFieldContainer extends StatelessWidget {
  String myHintText;
  Widget myIcon;
  Widget mySufixIcon;

  CustomTextFieldContainer({this.myHintText, this.myIcon, this.mySufixIcon});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: myIcon,
                hintText: myHintText,
                suffixIcon: mySufixIcon,
              ),
            ),
          )),
    );
  }
}
