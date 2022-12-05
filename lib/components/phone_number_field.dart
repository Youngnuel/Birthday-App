// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 48,
          width: 68,
          child: TextField(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2C3149),
            ),
            keyboardType: TextInputType.phone,
            maxLength: 4,
            decoration: InputDecoration(
              counterText: "",
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
        ),
        SizedBox(width: 4),
        Expanded(
          child: SizedBox(
            height: 48,
            width: 294,
            child: TextField(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff2C3149),
              ),
              controller: controller,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: "",
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
          ),
        )
      ],
    );
  }
}
