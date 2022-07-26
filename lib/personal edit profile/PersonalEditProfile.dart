import 'package:barbar_app/app%20selection%20screen/AppSelectionScreen.dart';
import 'package:barbar_app/core/ButtonColors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalEditableProfile extends StatefulWidget {
  @override
  _PersonalEditableProfileState createState() =>
      _PersonalEditableProfileState();
}

class _PersonalEditableProfileState extends State<PersonalEditableProfile> {
  bool isSwitched = true;

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
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height *0.2,
                    child: Center(
                      child: Image.asset(
                        'assets/images/Ellipse.png',
                        scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'MD Jewel Rana',
                    style: GoogleFonts.manrope(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    'New york, manhattan',
                    style: GoogleFonts.manrope(fontSize: 16),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit ',
                    style: GoogleFonts.manrope(fontSize: 16),
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Profession", suffixIcon: Icon(Icons.edit)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Experience", suffixIcon: Icon(Icons.edit)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Services',
                    style: GoogleFonts.manrope(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you provide services for children?',
                        style: GoogleFonts.manrope(
                          fontSize: 13,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.edit),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AppSelectionScreen()),
                      //   );
                      // },
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Center(
                              child: Text(
                                'CONFIRM',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ),
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}
