// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/otp_page.dart';
import 'package:birthday_app/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'components/phone_number_field.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class CreateAccount extends StatefulWidget {
  static const id = 'create_account';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _auth = FirebaseAuth.instance;
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(height: 39),
                Text(
                  'Create an account',
                  style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Text(
                  'It would only take few minutes we promise ????',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 96),
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
                    PhoneNumberField(controller: phonenumberController),
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
                    SizedBox(height: 24),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    PrimaryTextfield(
                      controller: passwordController,
                      hidetext: true,
                    ),
                    SizedBox(height: 26),
                    Row(children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xff17DBA7),
                      ),
                      SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                            text: 'I agree to all',
                            style: TextStyle(
                                color: Color(0xff888C91),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                text: ' terms & Conditions',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff17DBA7),
                                ),
                              ),
                            ]),
                      ),
                    ]),
                  ],
                ),
                SizedBox(height: 49),
                PrimaryButton(
                    title: 'SIGN UP',
                    tapMe: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        if (newUser != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpPage(
                                  phonenumber: phonenumberController.text),
                            ),
                          ).whenComplete(
                            () => phonenumberController.clear(),
                          );
                        }
                      } catch (e) {
                        print(e);
                      }
                    }),
                SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Color(0xff888C91),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: ' Login here',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff17DBA7),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 72)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
