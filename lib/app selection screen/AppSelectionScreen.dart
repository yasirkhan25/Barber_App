import 'package:barbar_app/core/ButtonColors.dart';
import 'package:barbar_app/creat%20account/CreatAccount.dart';
import 'package:barbar_app/providers/AppSelectionScreenProvider.dart';
import 'package:barbar_app/sign%20in/SigninScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AppSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return SelectionProvider();
    }, child: Scaffold(
        body: Consumer<SelectionProvider>(builder: (context, model, child) {
      return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 30.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: Center(
                  child: Text(
                'Join as a Vendor or User',
                style: GoogleFonts.manrope(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 170.h,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  model.getValue(0);
                },
                child: Container(
                  height: 170.h,
                  width: double.infinity,
                  decoration: model.value == 0
                      ? BoxDecoration(
                    border:
                    Border.all(color: Color(0xFF0941CE), width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF0941CE),
                        blurRadius: 5,
                        offset:
                        Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  )
                      : BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset:
                        Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/icons/user.png',
                          scale: 0.8,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'I’m a Vandor',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 170.h,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  model.getValue(1);
                },
                child: Container(
                  height: 170.h,
                  width: double.infinity,
                  decoration: model.value == 1
                      ? BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF0941CE), width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF0941CE),
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        )
                      : BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black26, width: 1),
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/icons/vendor.png',
                          scale: 0.8,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'I’m a User',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                model.getValue(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccount()),
                );
              },
              child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: model.value == 1 || model.value ==0 ? buttonColor : Color(0xFFE7E2F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Center(
                      child: Text(
                    'Create an Account',
                    style: TextStyle(
                        fontSize: 18,
                        color: model.value == 1 || model.value ==0? Color(0xFFFFFFFF) : Color(0xFFB6A8ED),
                        fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign in',
                            style:
                                TextStyle(color: Color(0xFF866EE1), fontSize: 16),
                          ),
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    })));
  }
}
