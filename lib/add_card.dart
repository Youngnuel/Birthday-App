// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors

import 'package:birthday_app/card_page.dart';
import 'package:flutter/material.dart';

import 'components/cardtab.dart';
import 'components/number_space.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class AddCard extends StatefulWidget {
  static const id = 'add_card';

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final cardnumberController = TextEditingController();
  final holdersnameController = TextEditingController();
  final cvvdigitsController = TextEditingController();
  final expirydateController = TextEditingController();

  @override
  void dispose() {
    cardnumberController.dispose();
    holdersnameController.dispose();
    expirydateController.dispose();
    cvvdigitsController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 21,
            width: 12,
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color(0xff2C3149),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(children: [
              SizedBox(height: 14),
              Stack(alignment: Alignment.center, children: [
                SizedBox(
                  height: 125,
                  width: 129,
                  child: Image(
                    image: AssetImage('images/clouds.png'),
                  ),
                ),
                Image(
                  height: 62,
                  width: 62,
                  image: AssetImage('images/withdraw.png'),
                )
              ]),
              SizedBox(height: 18),
              Text(
                'Add Card',
                style: TextStyle(
                    color: Color(0xff17DBA7),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                'Help your friend celebrate in one click',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff2C3149),
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 72),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Number',
                    style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  PrimaryTextfield(controller: cardnumberController),
                  SizedBox(height: 24),
                  Text(
                    'Holder’s Name',
                    style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  PrimaryTextfield(controller: holdersnameController),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      NumberSpace(
                          title: 'Expiry Date',
                          controller: expirydateController),
                      SizedBox(width: 12),
                      NumberSpace(
                        title: '3-Digits CVV',
                        controller: cvvdigitsController,
                        hidetext: true,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 72),
              PrimaryButton(
                  title: 'ADD CARD',
                  tapMe: () {
                    Navigator.pushNamed(context, CardPage.id);
                  }),
              SizedBox(height: 32),
            ]),
          ),
        ),
      ),
    );
  }
}
