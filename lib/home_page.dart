// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:birthday_app/components/events_tabs.dart';
import 'package:birthday_app/components/page_indicator.dart';
import 'package:flutter/material.dart';

import 'components/setup_tabs.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(children: [
              SizedBox(height: 61),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Welcome!',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff17DBA7),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            child: Image(
                              image: AssetImage('images/welcomeemoji.png'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Brown, Samson',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff888C91),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 53.38,
                    width: 53.38,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/smartboy.JPG'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View all >',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff888C91),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Container(
                  height: 144,
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    children: [
                      Container(
                        child: Image(image: AssetImage('images/sliderow1.png')),
                      ),
                      Container(
                        child: Image(image: AssetImage('images/sliderow2.png')),
                      ),
                    ],
                  )),
              SizedBox(height: 16),
              PageIndicator(
                currentValue: _selectedIndex,
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Active Events',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View all >',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff888C91),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              EventsTab(
                  title: 'Beach Party get together',
                  amount1: '₦7,000',
                  amount2: '/11,000'),
              SizedBox(height: 7),
              EventsTab(
                  title: 'Graduation Ceremony',
                  amount1: '₦12,000',
                  amount2: '/65,000'),
              SizedBox(height: 7),
              EventsTab(
                  title: 'Beach Party', amount1: '₦8,000', amount2: '/16,000'),
              SizedBox(height: 27),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Complete Setup . ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff2C3149),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                            text: '3/5',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff888C91),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 12),
                  SetupTabs(
                      title1: 'Bank Account Setting',
                      title2: 'This setup is required for withrawal',
                      iconimage: AssetImage('images/safe-shield.png')),
                  SizedBox(height: 8),
                  SetupTabs(
                    title1: 'Add Card',
                    title2: 'Help your friend celebrate in one click',
                    iconimage: AssetImage('images/atm-card.png'),
                  ),
                  SizedBox(height: 8),
                  SetupTabs(
                    title1: 'Invite a friend',
                    title2: 'Don\'t enjoy alone',
                    iconimage: AssetImage('images/gift.png'),
                  ),
                  SizedBox(height: 34),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
