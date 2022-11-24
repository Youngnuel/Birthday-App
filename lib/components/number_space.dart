import 'package:flutter/material.dart';

class NumberSpace extends StatelessWidget {
  const NumberSpace(
      {required this.controller, required this.title, this.hidetext = false});

  final TextEditingController controller;
  final String title;
  final bool hidetext;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff17DBA7),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 48,
            width: 177,
            child: TextField(
              obscureText: hidetext,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                focusColor: Color(0xffA4E1DA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
