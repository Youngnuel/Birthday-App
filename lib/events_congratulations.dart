// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/components/primarybutton.dart';
import 'package:birthday_app/events_page.dart';
import 'package:flutter/material.dart';

import 'components/name_tab.dart';

class EventsCongratulations extends StatefulWidget {
  static const id = 'events_congratulations';
  @override
  State<EventsCongratulations> createState() => _EventsCongratulationsState();
}

class _EventsCongratulationsState extends State<EventsCongratulations> {
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 86),
                  SizedBox(
                    height: 162,
                    width: 223.38,
                    child: Image(
                      image: AssetImage('images/congratulations.png'),
                    ),
                  ),
                  SizedBox(height: 48),
                  Text(
                    'Congratulations!',
                    style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Your event is live. Start sharing',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 68),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 48,
                            width: 366,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 48,
                              width: 117,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff17DBA7)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Copy Link',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                    SizedBox(width: 4),
                                    SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: Image(
                                            image:
                                                AssetImage('images/copy.png'))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Invite Someone to contribute',
                        style: TextStyle(
                          color: Color(0xff17DBA7),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              width: 295,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            height: 48,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff17DBA7)),
                            child: Center(
                              child: Text(
                                'Invite',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      NameTab(title: 'kingo4luv@gmail.com'),
                      SizedBox(height: 4),
                      NameTab(title: 'Cyril Uket'),
                    ],
                  ),
                  SizedBox(height: 48),
                  PrimaryButton(
                      title: 'GO TO EVENT PAGE',
                      tapMe: () {
                        Navigator.pushNamed(context, EventsPage.id);
                      }),
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
