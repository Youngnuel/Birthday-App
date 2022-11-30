// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/add_card.dart';
import 'package:flutter/material.dart';

class CardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AddCard.id);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.centerRight,
            image: AssetImage('images/shape.png'),
          ),
          color: Color(0xffEFFCF9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 31),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 16),
                  Stack(alignment: Alignment.center, children: [
                    SizedBox(
                      height: 64,
                      width: 66,
                      child: Image(
                        image: AssetImage('images/clouds.png'),
                      ),
                    ),
                    Image(
                      height: 32,
                      width: 32,
                      image: AssetImage('images/withdraw.png'),
                    )
                  ]),
                  SizedBox(width: 11),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Card',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2C3149),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Help your friend celebrate in one click',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6C6F80),
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
