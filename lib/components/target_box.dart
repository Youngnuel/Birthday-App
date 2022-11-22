// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TargetBox extends StatelessWidget {
  const TargetBox({required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 366,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(
          width: 0.5,
          color: Color(0xffA4E1DA),
        ),
      ),
      child: Row(children: [
        SizedBox(width: 16),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff6C6F80),
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Text(
          '₦28,000',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xff17DBA7),
          ),
        ),
        SizedBox(width: 16),
      ]),
    );
  }
}
