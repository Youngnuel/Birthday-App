// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:birthday_app/bank_setup.dart';
import 'package:birthday_app/withdrawal.dart';
import 'package:flutter/material.dart';

import 'components/primarybutton.dart';

class ErrorPage extends StatelessWidget {
  static const id = 'error_page';

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
          title: Text(
            'Withdrawal',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff17DBA7),
            ),
          ),
          centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(height: 187),
                SizedBox(
                  height: 136,
                  width: 140,
                  child: Image(
                    image: AssetImage('images/oops.png'),
                  ),
                ),
                SizedBox(height: 144),
                Text(
                  'Oops!',
                  style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Text(
                  'You have to setup your bank details before you withdraw. 🍻',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 98),
                PrimaryButton(
                    title: 'SETUP BANK DETAILS',
                    tapMe: () {
                      Navigator.pushNamed(context, BankSetup.id);
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
