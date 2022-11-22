// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({
    required this.title,
    required this.amount1,
    required this.amount2,
  });

  final String title;
  final String amount1;
  final String amount2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 366,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffA4E1DA),
        ),
      ),
      child: Row(
        children: [
          Spacer(),
          Image(
            width: 28.83,
            height: 32,
            image: AssetImage('images/calendaricon.png'),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(top: 16, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 5),
                RichText(
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
          Spacer(),
          IconButton(
            onPressed: () {},
            iconSize: 19.5,
            icon: Icon(
              Icons.arrow_forward,
              color: Color(0xffA4E1DA),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
