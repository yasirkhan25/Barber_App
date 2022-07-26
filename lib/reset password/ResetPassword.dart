
import 'package:barbar_app/core/CustomTextField.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black,size: 30,),

      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

            Text(
              'Reset Password',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please enter your email address to\nrequest a password reset',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextFieldContainer(
              myHintText: 'Enter Email',
              myIcon: Icon(Icons.mail_outline),
            ),
            SizedBox(
              height: 50,
            ),

            InkWell(
              child: Center(
                child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.height *0.3,
                    decoration: BoxDecoration(
                      color: Color(0xFF866EE1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
              ),
            ),
          ])),
    );
  }
}
