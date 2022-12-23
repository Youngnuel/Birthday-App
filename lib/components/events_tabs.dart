// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class EventsTab extends StatelessWidget {
  const EventsTab(
      {required this.title,
      required this.amount1,
      required this.amount2,
      required this.tapMe,
      required this.width});

  final String title;
  final String amount1;
  final String amount2;
  final VoidCallback tapMe;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Stack(
        children: [
          Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffD1F8ED),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.5,
                color: Color(0xffA4E1DA),
              ),
            ),
          ),
          Container(
            height: 86,
            width: width,
            decoration: BoxDecoration(
              color: Color(0xff17DBA7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),
          ),
          Container(
            height: 82,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.5,
                  color: Color(0xffA4E1DA),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(width: 24),
                    Image(
                      width: 28.83,
                      height: 32,
                      image: AssetImage('images/calendaricon.png'),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 5),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  text: amount1,
                                  style: TextStyle(
                                      color: Color(0xff17CCA4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  children: [
                                    TextSpan(
                                      text: amount2,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff17CCA4),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Raised',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff6C6F80),
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 60),
                    IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xffA4E1DA),
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 17),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
