// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AccountTabs extends StatelessWidget {
  const AccountTabs(
      {required this.title1,
      required this.title2,
      required this.iconimage,
      required this.tapMe});

  final String title1;
  final String title2;
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2C3149),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    title2,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff6C6F80),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
