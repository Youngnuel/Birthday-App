// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/withdrawal.dart';
import 'package:flutter/material.dart';

import 'components/primarybutton.dart';

class AccountDetailsAdded extends StatelessWidget {
  static const id = 'account_details_added';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 51),
                Text(
                  'Account details added successfully',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff17DBA7),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 104),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      height: 218,
                      width: 225,
                      image: AssetImage('images/processing.png'),
                    ),
                    Image(
                      height: 194,
                      width: 204,
                      image: AssetImage('images/processing1.png'),
                    ),
                  ],
                ),
                SizedBox(height: 144),
                SizedBox(height: 98),
                PrimaryButton(
                    title: 'BACK TO SETTINGS',
                    tapMe: () {
                      Navigator.pushNamed(context, Withdrawal.id);
                    }),
                SizedBox(height: 32)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
