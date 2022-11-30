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
