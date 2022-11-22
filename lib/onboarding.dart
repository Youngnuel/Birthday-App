// ignore_for_file: prefer_const_constructors

import 'package:birthday_app/components/page_indicator.dart';
import 'package:birthday_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/components/primarybutton.dart';

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
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 582.95,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: controller,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/screen1.png'),
                          height: 450.95,
                          width: 511.14,
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 274,
                          height: 58,
                          child: Text(
                            'Celebrating with friends couldn\'t be made easier.',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff212683)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 321,
                          height: 42,
                          child: Text(
                            'We promise you won\'t be out of fund this time your friends and love ones got you.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3149),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/screen2.png'),
                          height: 450.95,
                          width: 511.14,
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 58,
                          width: 200,
                          child: Text(
                            'Raise funds for every celebrations',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff212683)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 306,
                          height: 42,
                          child: Text(
                            'Share donation links to your friends. You can see as a fund raiser for your event.',
                            style: TextStyle(
                              fontFamily: 'Proxima Nova',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3149),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/screen3.png'),
                          height: 450.95,
                          width: 558.08,
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 58,
                          width: 283,
                          child: Text(
                            'Stay calm and let the donations start coming in.',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff212683)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 323,
                          height: 42,
                          child: Text(
                            'Like we said, “your family and friends got you”.',
                            style: TextStyle(
                              fontFamily: 'Proxima Nova',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3149),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 42),
            PageIndicator(
              currentValue: _selectedIndex,
            ),
            SizedBox(height: 64),
            _selectedIndex < 2
                ? PrimaryButton(
                    title: 'NEXT',
                    tapMe: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    })
                : PrimaryButton(
                    tapMe: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    title: 'LET\'S GO'),
            SizedBox(height: 48)
          ]),
        ),
      ),
    );
  }
}
