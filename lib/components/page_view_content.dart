// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PageviewContent extends StatelessWidget {
  const PageviewContent(
      {required this.titletext, required this.text, required this.pageimage});
  final String titletext;
  final String text;
  final AssetImage pageimage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image(
            image: pageimage,
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(
                width: 274,
                child: Text(
                  titletext,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff212683),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 321,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2C3149),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
