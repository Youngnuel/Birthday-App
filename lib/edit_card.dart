// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:birthday_app/card_page.dart';
import 'package:flutter/material.dart';

import 'components/cardtab.dart';
import 'components/number_space.dart';
import 'components/optionbuttons.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class EditCard extends StatefulWidget {
  static const id = 'edit_card';

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
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
                'Edit Card',
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
              Row(
                children: [
                  OptionButtons(
                    title: 'REMOVE',
                    textColor: Color(0xff17DBA7),
                    boxColor: Color(0xffE4F9F4),
                    tapMe: () {},
                  ),
                  SizedBox(width: 11),
                  OptionButtons(
                    title: 'UPDATE',
                    textColor: Colors.white,
                    boxColor: Color(0xff17DBA7),
                    tapMe: () {
                      Navigator.pushNamed(context, CardPage.id);
                    },
                  ),
                ],
              ),
              SizedBox(height: 32),
            ]),
          ),
        ),
      ),
    );
  }
}
