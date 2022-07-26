import 'package:barbar_app/choose%20services/ChooseServices.dart';
import 'package:barbar_app/core/CustomNextButton.dart';
import 'package:barbar_app/providers/ExperienceLevelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExperienceLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ExperienceLevelProvider();
      },
      child: SafeArea(
        child:
            Consumer<ExperienceLevelProvider>(builder: (context, model, child) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: Center(
                        child: Text(
                      'Your Experience Level',
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
                      child: CustomExpLevelClass(
                          myText: "SuperStar",
                          myIcon: model.value == 0
                              ? Icon(Icons.check_circle,
                                  color: Color(0xFF866EE1))
                              : SizedBox())),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                      onTap: () {
                        model.getValue(1);
                      },
                      child: CustomExpLevelClass(
                          myText: "AllStar",
                          myIcon: model.value == 1
                              ? Icon(Icons.check_circle,
                                  color: Color(0xFF866EE1))
                              : SizedBox())),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                      onTap: () {
                        model.getValue(2);
                      },
                      child: CustomExpLevelClass(
                          myText: "Veteran",
                          myIcon: model.value == 2
                              ? Icon(Icons.check_circle,
                                  color: Color(0xFF866EE1))
                              : SizedBox())),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                      onTap: () {
                        model.getValue(3);
                      },
                      child: CustomExpLevelClass(
                          myText: "Rookie Sensation",
                          myIcon: model.value == 3
                              ? Icon(Icons.check_circle,
                                  color: Color(0xFF866EE1))
                              : SizedBox())),
                  SizedBox(
                    height: 200.h,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50.h,
                      //width: MediaQuery.of(context).size.height * 0.18,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChooseServices()),
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
      ),
    );
  }
}

class CustomExpLevelClass extends StatelessWidget {
  String myText;
  final myIcon;

  CustomExpLevelClass({
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
              child: InkWell(
                child: Text(
                  myText.toString(),
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Container(
                child: myIcon,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: 15.w),
            // ),
          ],
        ),
      ),
    );
  }
}
