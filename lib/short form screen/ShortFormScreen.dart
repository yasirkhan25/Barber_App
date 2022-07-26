import 'dart:io';
import 'package:barbar_app/core/ButtonColors.dart';
import 'package:barbar_app/core/CustomNextButton.dart';
import 'package:barbar_app/jewel%20rana/JewelRanaName.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ShortFormScreen extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<ShortFormScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Sunday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Monday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Tuesday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Wednesday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Thursday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Friday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Saturday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
  ];

  ///Image Picker Path...................................
  File image1, image2, image3;
  ImagePicker imagePicker = ImagePicker();
  getImage(index) async {
    final img = await imagePicker.getImage(
      source: ImageSource.gallery,
    );
    if (index == 1) {
      if (img != null) {
        setState(() {
          image1 = File(img.path);
        });
      }
    } else if (index == 2) {
      if (img != null) {
        setState(() {
          image2 = File(img.path);
        });
      }
    } else if (index == 3) {
      if (img != null) {
        setState(() {
          image3 = File(img.path);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    'First Name',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First name',
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Location',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Location',
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Bio',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Bio',
                      ),
                    )),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      image1 == null
                          ? InkWell(
                              onTap: () {
                                getImage(1);
                              },
                              child: Container(
                                  height: 90.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE9ECF0),
                                  ),
                                  child: DottedBorder(
                                    color:
                                        buttonColor, //color of dotted/dash line
                                    strokeWidth: 1.5, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  )),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image1),
                            ),
                      image2 == null
                          ? InkWell(
                              onTap: () {
                                getImage(2);
                              },
                              child: Container(
                                  height: 90.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE9ECF0),
                                  ),
                                  child: DottedBorder(
                                    // borderType: BorderType.Circle,
                                    color:
                                        buttonColor, //color of dotted/dash line
                                    strokeWidth: 1.5, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  )),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image2),
                            ),
                      image3 == null
                          ? InkWell(
                              onTap: () {
                                getImage(3);
                              },
                              child: Container(
                                height: 90.h,
                                width: 90.h,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE9ECF0),
                                ),
                                child: DottedBorder(
                                    // borderType: BorderType.Circle,
                                    color:
                                        buttonColor, //color of dotted/dash line
                                    strokeWidth: 1.5, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    )),
                              ),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image3),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: DropdownButton<Item>(
                      isExpanded: true,
                      underline: Container(),
                      hint: Text("Day"),
                      value: selectedUser,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedUser = Value;
                        });
                      },
                      items: users.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              user.icon,
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    )),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50.h,
                    // width: MediaQuery.of(context).size.height * 0.18,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JewelRanaName()),
                          );
                        },
                        child: CustomNextButton()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}
