// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class DropDownFlow extends StatelessWidget {
  DropDownFlow({this.hintText = ''});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 48,
          child: DropdownButtonFormField<String>(
            icon: Icon(Icons.keyboard_arrow_down_rounded),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff888C91),
              ),
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
            onTap: () {},
            items: [
              DropdownMenuItem(
                child: Text('Beach Party get together'),
                value: 'Beach Party get together',
              ),
              DropdownMenuItem(
                child: Text('Graduation Ceremony'),
                value: 'Graduation Ceremony',
              ),
              DropdownMenuItem(
                child: Text('Beach Party'),
                value: 'Beach Party',
              ),
            ],
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}
