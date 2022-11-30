// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/home_page.dart';
import 'package:flutter/material.dart';

import 'components/card_details_tab.dart';
import 'components/number_space.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class DonationsDetails extends StatefulWidget {
  static const id = 'donation_details';

  @override
  State<DonationsDetails> createState() => _DonationsDetailsState();
}

class _DonationsDetailsState extends State<DonationsDetails> {
  final cardnumberController = TextEditingController();
  final holdersnameController = TextEditingController();
  final cvvdigitsController = TextEditingController();
  final expirydateController = TextEditingController();
  final amounttodonateController = TextEditingController();

  @override
  void dispose() {
    cardnumberController.dispose();
    holdersnameController.dispose();
    expirydateController.dispose();
    cvvdigitsController.dispose();
    amounttodonateController.dispose();

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
          title: Text(
            'Donate',
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
            child: Column(children: [
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerRight,
                    image: AssetImage('images/shape.png'),
                  ),
                  color: Color(0xffEFFCF9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Image(
                      width: 66,
                      height: 64,
                      image: AssetImage('images/calendaricon2.png'),
                    ),
                    SizedBox(width: 2.8),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 16, bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Golden Year Celebration, Rev. E. A. Umanah turns 58',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Birthday Celebration',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff17CCA4),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 44,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
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
                  SizedBox(height: 64),
                  Text(
                    'Select from your saved cards',
                    style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  CardDetailsTab(title: '2081oooooooo6093'),
                  SizedBox(height: 8),
                  CardDetailsTab(title: '5478oooooooo3654'),
                  SizedBox(height: 103),
                  Text(
                    'Amount to donate',
                    style: TextStyle(
                      color: Color(0xff17DBA7),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  PrimaryTextfield(controller: amounttodonateController),
                ],
              ),
              SizedBox(height: 43),
              PrimaryButton(
                  title: 'DONATE',
                  tapMe: () {
                    Navigator.pushNamed(context, HomePage.id);
                  }),
              SizedBox(height: 34),
            ]),
          ),
        ),
      ),
    );
  }
}
