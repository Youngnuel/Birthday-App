// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/account_details_added.dart';
import 'package:flutter/material.dart';

import 'components/banksetupbox.dart';
import 'components/primarybutton.dart';

class BankSetupVerfication extends StatefulWidget {
  static const id = 'bank_setup_verification';

  @override
  State<BankSetupVerfication> createState() => _BankSetupVerificationState();
}

class _BankSetupVerificationState extends State<BankSetupVerfication> {
  final accountnameController = TextEditingController();
  final accountnumberController = TextEditingController();

  @override
  void dispose() {
    accountnameController.dispose();
    accountnumberController.dispose();

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
            child: Column(
              children: [
                SizedBox(height: 125),
                Text(
                  'Verify!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff17DBA7),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Kindly verify your details',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff2C3149),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 152),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BankDetailsBox(
                      title: 'Bank Name',
                      detail: 'Zenith Bank Plc',
                    ),
                    SizedBox(height: 8),
                    BankDetailsBox(
                      title: 'Account Name',
                      detail: 'Brown Samson Dappa',
                    ),
                    SizedBox(height: 8),
                    BankDetailsBox(
                      title: 'Account Number',
                      detail: '2081896096',
                    ),
                    SizedBox(height: 72),
                    PrimaryButton(
                        title: 'CONTINUE',
                        tapMe: () {
                          Navigator.pushNamed(context, AccountDetailsAdded.id);
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
