// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
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
    return Container(
      height: 48,
      child: TextField(
        obscureText: hidetext,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
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
