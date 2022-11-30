// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../active_event_page.dart';

class EventsTab2 extends StatelessWidget {
  const EventsTab2({
    required this.title,
    required this.amount1,
    required this.amount2,
  });

  final String title;
  final String amount1;
  final String amount2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ActiveEventPage.id);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.centerRight,
            image: AssetImage('images/shape.png'),
          ),
          color: Color(0xffEFFCF9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 16),
            Image(
              width: 66,
              height: 64,
              image: AssetImage('images/calendaricon2.png'),
            ),
            SizedBox(width: 2.8),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 16, bottom: 12),
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
                    SizedBox(height: 4),
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          text: 'O2',
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
                            TextSpan(
                              text: ' Ended',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6C6F80),
                              ),
                            ),
                            TextSpan(
                              text: ' 02-11-2020',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff6C6F80),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                          text: amount1,
                          style: TextStyle(
                              color: Color(0xff17CCA4),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                              text: amount2,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff17CCA4),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 24,
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xffA4E1DA),
              ),
            ),
            SizedBox(
              width: 14,
            ),
          ],
        ),
      ),
    );
  }
}
