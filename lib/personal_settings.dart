// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class PersonalSettings extends StatefulWidget {
  static const id = 'personal_settings';

  @override
  State<PersonalSettings> createState() => _PersonalSettingsState();
}

class _PersonalSettingsState extends State<PersonalSettings> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    phonenumberController.dispose();

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
                SizedBox(height: 33),
                Stack(alignment: Alignment.bottomRight, children: [
                  Container(
                    height: 112,
                    width: 112,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffA4E1DA),
                        ),
                        shape: BoxShape.circle,
                        color: Color(0xffC4C4C4)),
                    child: CircleAvatar(
                      radius: 104,
                      backgroundImage: AssetImage('images/smartboy.JPG'),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff17DBA7)),
                    child: Icon(
                      CupertinoIcons.camera,
                      color: Color(0xffFFFFFF),
                      size: 20,
                    ),
                  ),
                ]),
                SizedBox(height: 42),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(controller: firstnameController),
                    SizedBox(height: 24),
                    Text(
                      'Last Name',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(controller: lastnameController),
                    SizedBox(height: 24),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        SizedBox(
                          height: 48,
                          width: 68,
                          child: TextField(
                            decoration: InputDecoration(
                              focusColor: Color(0xffA4E1DA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            width: 294,
                            child: TextField(
                              controller: phonenumberController,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                focusColor: Color(0xffA4E1DA),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController),
                    SizedBox(height: 26),
                  ],
                ),
                SizedBox(height: 48),
                PrimaryButton(title: 'UPDATE', tapMe: () {}),
                SizedBox(height: 32)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
