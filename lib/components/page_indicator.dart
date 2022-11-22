// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, this.currentValue = 0});

  final int currentValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: AnimatedContainer(
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 500),
                  width: index == currentValue ? 38 : 12,
                  height: 8,
                  decoration: BoxDecoration(
                      color: index == currentValue
                          ? Color(0xff17DBA7)
                          : Color(0xffA4E1DA),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
    );
  }
}
