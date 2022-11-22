// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NameTab extends StatelessWidget {
  const NameTab({
    required this.title,
  });

  final String title;

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
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff2C3149),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.close_outlined),
          ),
        ],
      ),
    );
  }
}
