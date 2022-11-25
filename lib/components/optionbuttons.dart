import 'package:flutter/material.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons(
      {required this.title,
      required this.tapMe,
      required this.boxColor,
      required this.textColor});
  final String title;
  final VoidCallback tapMe;
  final Color boxColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tapMe();
        },
        child: Container(
          height: 46,
          width: 366,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: boxColor),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
