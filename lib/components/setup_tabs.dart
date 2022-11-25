// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SetupTabs extends StatelessWidget {
  const SetupTabs(
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
    return InkWell(
      onTap: () {
        tapMe();
      },
      child: Container(
          height: 62,
          width: 366,
          decoration: BoxDecoration(
            color: Color(0xff17DBA7).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: 12),
              Image(
                width: 24,
                height: 24,
                image: iconimage,
              ),
              SizedBox(width: 19),
              Container(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 5),
                    Text(
                      title2,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6C6F80),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
