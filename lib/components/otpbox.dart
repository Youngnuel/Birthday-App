// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class OtpBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 211),
        Container(
          height: 48,
          width: 48,
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusColor: Color(0xffA4E1DA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 8,
          child: Divider(
            thickness: 3,
            color: Color(0xff2C3149),
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 48,
          width: 48,
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusColor: Color(0xffA4E1DA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 8,
          child: Divider(
            thickness: 3,
            color: Color(0xff2C3149),
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 48,
          width: 48,
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusColor: Color(0xffA4E1DA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 8,
          child: Divider(
            thickness: 3,
            color: Color(0xff2C3149),
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 48,
          width: 48,
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusColor: Color(0xffA4E1DA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 240),
      ]),
    );
  }
}
