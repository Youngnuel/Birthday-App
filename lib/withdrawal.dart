// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/withdrawal_processing.dart';
import 'package:flutter/material.dart';

import 'components/dropdownflow.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class Withdrawal extends StatefulWidget {
  static const id = 'withdrawal';

  @override
  State<Withdrawal> createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  final amountController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    amountController.dispose();
    passwordController.dispose();

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
            'Withdrawal',
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
                Container(
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
                                    'Available balance',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff2C3149),
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '₦184,000',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xff17DBA7),
                                      fontWeight: FontWeight.w700,
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
                SizedBox(height: 12),
                Container(
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
                          image: AssetImage('images/safe-shield.png'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text:
                                  'Your funds will be sent to your Zenith Bank (Brown Samson Dappa, 2081896093).',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Tap to change',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff17DBA7),
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 93),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount to withdraw (N2,000  Minimum)',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(
                      controller: amountController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Select event  you are withdrawing for',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    DropDownFlow(),
                    SizedBox(height: 24),
                    Text(
                      'Enter Password',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(
                      controller: passwordController,
                      hidetext: true,
                    ),
                    SizedBox(height: 72),
                    PrimaryButton(
                        title: 'WITHDRAWAL',
                        tapMe: () {
                          Navigator.pushNamed(context, WithdrawalProcessing.id);
                        }),
                    SizedBox(height: 32)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
