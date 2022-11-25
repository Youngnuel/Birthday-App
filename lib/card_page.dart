// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:birthday_app/account.dart';
import 'package:birthday_app/edit_card.dart';
import 'package:flutter/material.dart';

import 'components/cardtab.dart';
import 'components/primarybutton.dart';

class CardPage extends StatelessWidget {
  static const id = 'card_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, Account.id);
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
          title: Text(
            'Payment Cards',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff17DBA7),
            ),
          ),
          centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(height: 12),
                CardTab(),
                SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, EditCard.id);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 62,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Color(0xffC5D0CE)),
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image(
                            image: AssetImage('images/atm-card.png'),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          '2081oooooooo6093',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2C3149),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(width: 28),
                        SizedBox(
                          height: 15,
                          width: 24,
                          child: Image(
                            image: AssetImage('images/mastercardlogo.png'),
                          ),
                        ),
                        SizedBox(width: 22),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 450),
                PrimaryButton(title: 'WITHDRAW', tapMe: () {}),
                SizedBox(height: 32)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
