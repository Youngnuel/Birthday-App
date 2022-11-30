// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CardDetailsTab extends StatelessWidget {
  const CardDetailsTab({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Color(0xffC5D0CE)),
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          SizedBox(
            height: 24,
            width: 24,
            child: Icon(
              Icons.circle_outlined,
              color: Color(0xff17DBA7),
            ),
          ),
          SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff2C3149),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(width: 26),
          SizedBox(
            height: 15,
            width: 24,
            child: Image(
              image: AssetImage('images/mastercardlogo.png'),
            ),
          ),
          SizedBox(width: 22),
        ],
      ),
    );
  }
}
