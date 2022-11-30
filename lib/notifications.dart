// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'components/notifications_tab.dart';

class Notifications extends StatelessWidget {
  static const id = 'notifications';
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
            'Notifications',
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
                  NotificationsTab(title: 'Godswill Okon donated'),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage('images/shape.png'),
                      ),
                      color: Color(0xffEFFCF9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 16),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(width: 7),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cyril Uket invited you to donate to his event',
                                      style: TextStyle(
                                          color: Color(0xff2C3149),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '7 mins ago',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff2C3149),
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 45),
                              IconButton(
                                onPressed: () {},
                                iconSize: 24,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xffA4E1DA),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          SizedBox(width: 16),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  NotificationsTab(title: 'Kingsley donated'),
                  SizedBox(height: 229),
                ],
              )),
        ),
      ),
    );
  }
}
