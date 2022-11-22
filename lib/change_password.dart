// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class ChangePassword extends StatefulWidget {
  static const id = 'change_password';

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final oldpasswordController = TextEditingController();
  final newpasswordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    oldpasswordController.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();

    super.dispose();
  }

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
            'Personal Settings',
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
                SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Old Password',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(
                      controller: oldpasswordController,
                      hintText: 'Enter Old Password',
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Enter New Password',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(
                        controller: newpasswordController,
                        hintText: 'Enter New Password'),
                    SizedBox(height: 24),
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(
                        controller: confirmpasswordController,
                        hintText: 'Confirm New Password'),
                    SizedBox(height: 26),
                  ],
                ),
                SizedBox(height: 327),
                PrimaryButton(title: 'CHANGE PASSWORD', tapMe: () {}),
                SizedBox(height: 32)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
