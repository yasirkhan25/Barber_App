import 'package:barbar_app/core/ButtonColors.dart';
import 'package:barbar_app/core/CustomTextField.dart';
import 'package:barbar_app/creat%20account/CreatAccount.dart';
import 'package:barbar_app/profession/ChooseProfession.dart';
import 'package:barbar_app/providers/SignInScreenProvider.dart';
import 'package:barbar_app/reset%20password/ResetPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return SignIntScreenProvider();
    }, child: SafeArea(
      child: Scaffold(
        body: Consumer<SignIntScreenProvider>(builder: (context, model, child) {
          return SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Container(
                          //height: MediaQuery.of(context).size.height *0.2,
                          child: Center(
                            child: Image.asset(
                              'assets/icons/applogo.png',
                              scale: 0.7,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          'Barber',
                          style: GoogleFonts.roboto(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Enter Email',
                          myIcon: Icon(Icons.mail_outline),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldContainer(
                          myHintText: 'Enter Password',
                          myIcon: Icon(Icons.lock_outline),
                          mySufixIcon: Icon(
                            Icons.visibility_off,
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Switch(
                                value: model.isSwitched,
                                onChanged: (value) {
                                  model.setCheck(value);
                                },
                                activeTrackColor: Color(0xFF3454EC),
                                activeColor: Colors.white,
                              ),
                              Text('Remember Me'),
                              SizedBox(
                                width: 70,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPassword()),
                                  );
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Color(0xFF3454EC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profession()),
                              );
                            },
                            child: Container(
                                height: 60,
                                width:
                                    MediaQuery.of(context).size.height * 0.35,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Center(
                                    child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "OR",
                            style: GoogleFonts.manrope(
                              fontSize: ScreenUtil().setSp(16),
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
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
                                  border: Border.all(
                                      color: Color(0xFFD1D1D6), width: 1),
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
                                  border: Border.all(
                                      color: Color(0xFFD1D1D6), width: 1),
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
                                      builder: (context) => CreateAccount()),
                                );
                              },
                              child: RichText(
                                text: TextSpan(
                                    text: 'Dont have an account? ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Sign up ',
                                        style: TextStyle(
                                            color: Color(0xFF866EE1),
                                            fontSize: 16),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        )
                      ])));
        }),
      ),
    ));
  }
}
