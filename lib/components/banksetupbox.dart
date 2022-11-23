import 'package:flutter/material.dart';

class BankDetailsBox extends StatelessWidget {
  const BankDetailsBox({required this.title, required this.detail});

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xfffA4E1DA),
        border: Border.all(
          color: Color(0xffA4E1DA),
        ),
      ),
      child: Row(children: [
        SizedBox(width: 16),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff17DBA7),
              fontSize: 12,
              fontWeight: FontWeight.w700),
        ),
        Spacer(),
        Text(
          detail,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xff2C3149),
          ),
        ),
        SizedBox(width: 16),
      ]),
    );
  }
}
