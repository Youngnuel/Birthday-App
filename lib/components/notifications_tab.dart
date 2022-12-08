// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      color: Colors.blueAccent, shape: BoxShape.circle),
                ),
                SizedBox(width: 7),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hurray!',
                        style: TextStyle(
                            color: Color(0xff17DBA7),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            text: title,
                            style: TextStyle(
                                color: Color(0xff2C3149),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                text: ' ₦4000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2C3149),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '5 mins ago',
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
            Row(
              children: [
                SizedBox(width: 55),
                Container(
                  height: 82,
                  width: 292,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffA4E1DA),
                    ),
                  ),
                  child: Row(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Beach Party get together',
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
                                    text: 'N7,000',
                                    style: TextStyle(
                                        color: Color(0xff17CCA4),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                    children: [
                                      TextSpan(
                                        text: 'N11,000',
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
                      SizedBox(width: 24),
                    ],
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
