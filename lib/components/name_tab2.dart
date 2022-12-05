// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NameTab2 extends StatelessWidget {
  const NameTab2({required this.title, required this.title2});

  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 366,
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: Color(0xff17DBA7).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 28,
            decoration:
                BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  title2,
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
          SizedBox(width: 91),
          Text(
            '₦4000',
            style: TextStyle(
                color: Color(0xff2C3149),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}
