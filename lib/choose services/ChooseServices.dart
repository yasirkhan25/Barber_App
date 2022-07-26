import 'package:barbar_app/core/CustomNextButton.dart';
import 'package:barbar_app/price%20range/PriceRange.dart';
import 'package:barbar_app/providers/ChooseServicesProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooseServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return ChooseServicesProvider();
    }, child: SafeArea(
      child: Consumer<ChooseServicesProvider>(builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Center(
                      child: Text(
                    'Choose Services',
                    style: GoogleFonts.manrope(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ),
                SizedBox(
                  height: 50.h,
                ),

                ///Custom Container Called.....................................
                InkWell(
                  onTap: () {
                    model.getValue(0);
                  },
                  child: CustomChooseServicesClass(
                    myText: "	Do you provide services for women?",
                    myIcon: model.value == 0
                        ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                        : SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    model.getValue(1);
                  },
                  child: CustomChooseServicesClass(
                      myText: "	Do you provide services for children?",
                      myIcon: model.value == 1
                          ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                          : SizedBox()),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    model.getValue(2);
                  },
                  child: CustomChooseServicesClass(
                      myText: "Does your facility accommodate the handicap?",
                      myIcon: model.value == 2
                          ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                          : SizedBox()),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    model.getValue(3);
                  },
                  child: CustomChooseServicesClass(
                      myText: "	Do you provide in home mobile services?",
                      myIcon: model.value == 3
                          ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                          : SizedBox()),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    model.getValue(4);
                  },
                  child: CustomChooseServicesClass(
                      myText: "Do you have days your services are discounted?",
                      myIcon: model.value == 4
                          ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                          : SizedBox()),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    model.getValue(5);
                  },
                  child: CustomChooseServicesClass(
                      myText: "what is the price range for your services ?",
                      myIcon: model.value == 5
                          ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                          : SizedBox()),
                ),
                SizedBox(
                  height: 60.h,
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
                                builder: (context) => PriceRange()),
                          );
                        },
                        child: CustomNextButton()),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    ));
  }
}

class CustomChooseServicesClass extends StatelessWidget {
  String myText;
  final myIcon;

  CustomChooseServicesClass({
    this.myText,
    this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60,
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
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15.w,
              ),
              child: Text(
                myText.toString(),
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Container(
                child: myIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
