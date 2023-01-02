// ignore_for_file: use_key_in_widget_constructors

import 'package:birthday_app/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  static const id = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/splashscreen.png',
      nextScreen: OnboardingPage(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 1000,
    );
  }
}
