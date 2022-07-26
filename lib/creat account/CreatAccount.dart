import 'package:barbar_app/app%20selection%20screen/AppSelectionScreen.dart';
import 'package:barbar_app/core/ButtonColors.dart';
import 'package:barbar_app/core/CustomTextField.dart';
import 'package:barbar_app/providers/CreatAccountScreenProvider.dart';
import 'package:barbar_app/sign%20in/SigninScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CreatAccountScreenProvider();
      },
      child: SafeArea(
        child: Scaffold(
          body: Consumer<CreatAccountScreenProvider>(builder: (context, model, child) {
            return SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Creat Account',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Full Name',
                          myIcon: Icon(Icons.person_outline),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Enter Your Email',
                          myIcon: Icon(Icons.mail_outline),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Your Password',
                          myIcon: Icon(Icons.lock_outline),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Confirm Password',
                          myIcon: Icon(Icons.lock_outline),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: model.isChecked,
                                  onChanged: (value) {
                                    model.setChecked = value;
                                  }),
                              RichText(
                                text: TextSpan(
                                    text: 'I agree the ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Terms of Services ',
                                        style: TextStyle(
                                            color: Color(0xFF866EE1),
                                            fontSize: 14),
                                      ),
                                      TextSpan(
                                        text: '& ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      TextSpan(
                                        text: 'Privacy Policy ',
                                        style: TextStyle(
                                            color: Color(0xFF866EE1),
                                            fontSize: 12),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppSelectionScreen()),
                            );
                          },
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: model.isChecked == true
                                    ? buttonColor
                                    : Color(0xFFE7E2F9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Center(
                                  child: Text(
                                'Create an Account',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: model.isChecked == true
                                        ? Color(0xFFFFFFFF)
                                        : Color(0xFFB6A8ED),
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              // ignore: unnecessary_new
                              child: Container(
                                  margin:
                                      EdgeInsets.only(left: 40.0, right: 10.0),
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 36,
                                    thickness: 2,
                                  )),
                            ),
                            Text(
                              "OR",
                              style: GoogleFonts.manrope(
                                fontSize: ScreenUtil().setSp(16),
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              // ignore: unnecessary_new
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 10.0, right: 40.0),
                                child: Divider(
                                  color: Colors.grey,
                                  height: 36,
                                  thickness: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.27,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Color(0xFFD1D1D6), width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Center(
                                  child: Image.asset('assets/icons/google.png'),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.27,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Color(0xFFD1D1D6), width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Center(
                                  child: Image.asset('assets/icons/apple.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()),
                                );
                              },
                              child: RichText(
                                text: TextSpan(
                                    text: 'Already have an account? ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Sign in ',
                                        style: TextStyle(
                                            color: Color(0xFF866EE1),
                                            fontSize: 16),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        )
                      ])),
            );
          }),
        ),
      ),
    );
  }
}
