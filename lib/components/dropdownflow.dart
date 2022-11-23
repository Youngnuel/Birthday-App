// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last

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
          width: 366,
          child: DropdownButtonFormField<String>(
            icon: Icon(Icons.keyboard_arrow_down_rounded),
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
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
