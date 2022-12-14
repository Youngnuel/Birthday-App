// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:birthday_app/donation_details.dart';
import 'package:flutter/material.dart';

import 'components/name_tab2.dart';
import 'components/target_box.dart';

class DonationPage extends StatefulWidget {
  static const id = 'donation_page';

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
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
            'Events',
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 9),
                  Row(
                    children: [
                      SizedBox(
                        height: 53,
                        width: 53,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/smartboy.JPG'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Created by',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff2C3149),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Godswill Okon',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff2C3149),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, DonationsDetails.id);
                        },
                        child: Container(
                          height: 40,
                          width: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff17DBA7)),
                          child: Center(
                            child: Text(
                              'DONATE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Golden Year Celebration, Rev. E. A. Umanah turns 58',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Birthday Celebration',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff17DBA7),
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 160,
                    width: 366,
                    child: Image(
                      image: AssetImage('images/celebration.png'),
                    ),
                  ),
                  SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      text: 'Event Date',
                      style: TextStyle(
                          color: Color(0xff6C6F80),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: ' 02-11-2020',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff6C6F80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'At last, the wait is over. It\'s time for our highly anticipated Carol Service themed: Colours of Christmas. Carol services are always a time family, fun, worship and praise to commemorate the yuletide season.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 32),
                  TargetBox(title: 'Target amount', color: Colors.white),
                  SizedBox(height: 12),
                  TargetBox(
                    title: 'Raised amount',
                    color: Color(0xffA4E1DA),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Text(
                        'Contributors',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff17DBA7),
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          text: '02',
                          style: TextStyle(
                              color: Color(0xff6C6F80),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: ' Donations',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6C6F80),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Color(0xffA4E1DA),
                    thickness: 1,
                  ),
                  SizedBox(height: 16),
                  NameTab2(title: 'kingo4luv@gmail.com', title2: '5 days ago'),
                  SizedBox(height: 8),
                  NameTab2(title: 'Godswill Okon', title2: '3 days ago'),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
