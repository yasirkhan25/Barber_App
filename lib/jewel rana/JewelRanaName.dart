import 'package:barbar_app/core/ButtonColors.dart';
import 'package:barbar_app/personal%20edit%20profile/PersonalEditProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class JewelRanaName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Center(
                  child: Text(
                'Jewel Rana',
                style: GoogleFonts.manrope(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Text(
                'Hey i am jewel rana as a very good ui ux designer.i hope all are ok',
                style: GoogleFonts.manrope(
                    fontSize: 16.sp, color: Color(0xFFA3A3A3)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Bangladesh,Meherpur-2011',
              style: GoogleFonts.manrope(
                  fontSize: 16.sp, color: Color(0xFFA3A3A3)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text('12-05-2022',
                style: GoogleFonts.manrope(
                    fontSize: 16.sp, color: Color(0xFFA3A3A3))),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/rectangle1.png'),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset('assets/images/rectangle2.png'),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset('assets/images/rectangle3.png'),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              style: GoogleFonts.manrope(
                  fontSize: 16.sp, color: Color(0xFFA3A3A3)),
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PersonalEditableProfile()),
                );
              },
              child: Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
            InkWell(
              child: Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
