// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2C3149),
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2C3149),
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2C3149),
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2C3149),
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffA4E1DA),
                ),
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
