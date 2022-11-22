// ignore_for_file: prefer_const_constructors

import 'package:birthday_app/account.dart';
import 'package:birthday_app/account_settings.dart';
import 'package:birthday_app/active_event_page.dart';
import 'package:birthday_app/change_password.dart';
import 'package:birthday_app/create_account.dart';
import 'package:birthday_app/dashboard.dart';
import 'package:birthday_app/events_congratulations.dart';
import 'package:birthday_app/create_event.dart';
import 'package:birthday_app/events_page.dart';
import 'package:birthday_app/home_page.dart';
import 'package:birthday_app/notifications.dart';
import 'package:birthday_app/otp_page.dart';
import 'package:birthday_app/login_page.dart';
import 'package:birthday_app/personal_settings.dart';
import 'package:flutter/material.dart';
import 'onboarding.dart';

void main() {
  runApp(BirthdayApp());
}

class BirthdayApp extends StatefulWidget {
  const BirthdayApp({super.key});

  @override
  State<BirthdayApp> createState() => _BirthdayAppState();
}

class _BirthdayAppState extends State<BirthdayApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Proxima Nova'),
      initialRoute: OnboardingPage.id,
      routes: {
        OnboardingPage.id: (context) => OnboardingPage(),
        LoginPage.id: (context) => LoginPage(),
        CreateAccount.id: (context) => CreateAccount(),
        OtpPage.id: (context) => OtpPage(),
        Dashboard.id: (context) => Dashboard(),
        HomePage.id: (context) => HomePage(),
        Account.id: (context) => Account(),
        CreateEvent.id: (context) => CreateEvent(),
        Notifications.id: (context) => Notifications(),
        EventsCongratulations.id: (context) => EventsCongratulations(),
        EventsPage.id: (context) => EventsPage(),
        ActiveEventPage.id: (context) => ActiveEventPage(),
        AccountSettings.id: (context) => AccountSettings(),
        PersonalSettings.id: (context) => PersonalSettings(),
        ChangePassword.id: (context) => ChangePassword(),
      },
    );
  }
}
