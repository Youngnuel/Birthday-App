// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:birthday_app/components/page_indicator.dart';
import 'package:birthday_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/components/primarybutton.dart';

import 'components/page_view_content.dart';

class OnboardingPage extends StatefulWidget {
  static const String id = 'onboarding';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var _selectedIndex = 0;
  int index = 0;

  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: _selectedIndex > 0
            ? GestureDetector(
                child: SizedBox(
                  height: 21,
                  width: 12,
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Color(0xff2C3149),
                  ),
                ),
                onTap: () {
                  controller.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
              )
            : SizedBox(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: controller,
                children: [
                  PageviewContent(
                    pageimage: AssetImage('images/screen1.png'),
                    titletext:
                        'Celebrating with friends couldn\'t be made easier.',
                    text:
                        'We promise you won\'t be out of fund this time your friends and love ones got you.',
                  ),
                  PageviewContent(
                    titletext: 'Raise funds for every celebrations',
                    text:
                        'Share donation links to your friends. You can see as a fund raiser for your event.',
                    pageimage: AssetImage('images/screen2.png'),
                  ),
                  PageviewContent(
                      titletext:
                          'Stay calm and let the donations start coming in.',
                      text: 'Like we said, “your family and friends got you”.',
                      pageimage: AssetImage('images/screen3.png')),
                ],
              ),
            ),
          ),
          PageIndicator(
            currentValue: _selectedIndex,
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              children: [
                if (_selectedIndex < 2)
                  PrimaryButton(
                      title: 'NEXT',
                      tapMe: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      })
                else
                  PrimaryButton(
                      tapMe: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      title: 'LET\'S GO'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
