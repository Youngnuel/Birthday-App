// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/change_password.dart';
import 'package:birthday_app/personal_settings.dart';
import 'package:flutter/material.dart';

import 'components/settings_tabs.dart';

class AccountSettings extends StatelessWidget {
  static const id = 'account_settings';

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
            child: Container(
              height: 21,
              width: 12,
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Color(0xff2C3149),
              ),
            ),
          ),
          title: Text(
            'My Account Settings',
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
                  SizedBox(height: 12),
                  SettingTab(
                    tapMe: () {
                      Navigator.pushNamed(context, PersonalSettings.id);
                    },
                    title: 'Personal Settings',
                    iconimage: AssetImage('images/account.png'),
                  ),
                  SizedBox(height: 8),
                  SettingTab(
                    tapMe: () {
                      Navigator.pushNamed(context, ChangePassword.id);
                    },
                    title: 'Change Password',
                    iconimage: AssetImage('images/password.png'),
                  ),
                  SizedBox(height: 185),
                ],
              )),
        ),
      ),
    );
  }
}
