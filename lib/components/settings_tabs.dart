// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab(
      {required this.title, required this.iconimage, required this.tapMe});

  final String title;
  final AssetImage iconimage;
  final VoidCallback tapMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapMe();
      },
      child: Container(
        height: 62,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffC5D0CE),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 12),
            SizedBox(
              height: 24,
              width: 24,
              child: Image(
                image: iconimage,
              ),
            ),
            SizedBox(width: 19),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff17DBA7),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
