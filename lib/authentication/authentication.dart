import 'package:barbar_app/app%20selection%20screen/AppSelectionScreen.dart';
import 'package:barbar_app/core/ButtonColors.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: buttonColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Center(
              child: Image.asset('assets/icons/icon2.png'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppSelectionScreen()),
              );
            },
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Center(
                    child: Text(
                  'Ceate an Account',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF866EE1),
                      fontWeight: FontWeight.bold),
                ))),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppSelectionScreen()),
              );
            },
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
          ),
        ],
      ),
    );
  }
}
