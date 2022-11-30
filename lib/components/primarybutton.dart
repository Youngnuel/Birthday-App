// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.title, required this.tapMe});
  final String title;
  final VoidCallback tapMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Container(
        height: 46,
        width: 366,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xff17DBA7)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
