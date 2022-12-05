// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/dashboard.dart';
import 'package:flutter/material.dart';

import 'components/otpbox.dart';
import 'components/primarybutton.dart';

class OtpPage extends StatelessWidget {
  static const id = 'otp_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 21,
            width: 12,
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color(0xff2C3149),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 39),
                Text(
                  'Verify your phone number 😉',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  'You are just one step away',
                  style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Text(
                  'Enter the 4 digit code sent to 081******37',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                OtpBox(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Haven\'t received code after 5 minutes?',
                      style: TextStyle(
                          color: Color(0xff888C91),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: ' Resend code',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff17DBA7),
                          ),
                        ),
                        TextSpan(
                          text: ' or',
                          style: TextStyle(
                              color: Color(0xff888C91),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: ' Change number',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff17DBA7),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 48),
                PrimaryButton(
                    title: 'DONE',
                    tapMe: () {
                      Navigator.pushNamed(context, Dashboard.id);
                    }),
                SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
