// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, use_build_context_synchronously

import 'package:birthday_app/components/primarybutton.dart';
import 'package:birthday_app/create_account.dart';
import 'package:birthday_app/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'components/primarytextfield.dart';

class LoginPage extends StatefulWidget {
  static const id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(height: 95),
                Text(
                  'Welcome!',
                  style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login and Let\'s continue',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff2C3149),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(width: 3),
                    SizedBox(
                      height: 22.78,
                      width: 24,
                      child: Image(
                        image: AssetImage('images/emoji.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 96),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SizedBox(height: 24),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Color(0xff888C91),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: 48),
                PrimaryButton(
                    title: 'Login',
                    tapMe: () async {
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                        if (user != null) {
                          Navigator.pushNamed(context, Dashboard.id);
                        }
                      } catch (e) {
                        print(e);
                      }
                    }),
                SizedBox(height: 64),
                Text(
                  'Or continue with',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff2C3149)),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 102,
                      child: Image(
                        image: AssetImage('images/google.png'),
                      ),
                    ),
                    SizedBox(width: 8),
                    SizedBox(
                      height: 32,
                      width: 102,
                      child: Image(
                        image: AssetImage('images/facebook.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CreateAccount.id);
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                            color: Color(0xff888C91),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff17DBA7),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
