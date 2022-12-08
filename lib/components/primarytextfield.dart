// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  PrimaryTextfield({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.hidetext = false,
    this.hintText = '',
  });
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool hidetext;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xff2C3149),
        ),
        obscureText: hidetext,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xffC5D0CE),
              fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
