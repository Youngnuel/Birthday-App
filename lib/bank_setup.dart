// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:birthday_app/bank_setup_verification.dart';
import 'package:flutter/material.dart';

import 'components/dropdownflow.dart';
import 'components/primarybutton.dart';
import 'components/primarytextfield.dart';

class BankSetup extends StatefulWidget {
  static const id = 'bank_setup';

  @override
  State<BankSetup> createState() => _WithdrawalState();
}

class _WithdrawalState extends State<BankSetup> {
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
          title: Text(
            'Bank Setup',
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
                SizedBox(height: 48),
                Stack(alignment: Alignment.center, children: [
                  Image(
                    height: 98,
                    width: 101,
                    image: AssetImage('images/clouds.png'),
                  ),
                  Image(
                    height: 72,
                    width: 72,
                    image: AssetImage('images/safe-shield.png'),
                  )
                ]),
                SizedBox(height: 33),
                Text(
                  'This setup is required for withdrawal. No worries, you can always change it ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff6C6F80),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 66),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Bank',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    DropDownFlow(),
                    SizedBox(height: 24),
                    Text(
                      'Account Name',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(
                      controller: accountnameController,
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Account Number',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(
                      controller: accountnumberController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 72),
                    PrimaryButton(
                        title: 'CONTINUE',
                        tapMe: () {
                          Navigator.pushNamed(context, BankSetupVerfication.id);
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
