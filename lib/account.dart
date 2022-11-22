// ignore_for_file: prefer_const_constructors

import 'package:birthday_app/account_settings.dart';
import 'package:flutter/material.dart';

import 'components/accounttabs.dart';

class Account extends StatelessWidget {
  static const id = 'account';

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
            'My Account',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Hello!',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff17DBA7),
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(width: 3),
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: Image(
                                  image: AssetImage('images/welcomeemoji.png'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Brown, Samson',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff2C3149),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        height: 53.38,
                        width: 53.38,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/smartboy.JPG'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
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
                              SizedBox(
                                height: 64,
                                width: 66,
                                child: Image(
                                  image: AssetImage('images/accounticon.png'),
                                ),
                              ),
                              SizedBox(width: 11),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Account Settings',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xff17DBA7),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Profile Setting,  Change Password',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff2C3149),
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 50),
                              IconButton(
                                onPressed: () {},
                                iconSize: 24,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xffA4E1DA),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 48),
                  Text(
                    'Other Options',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff888C91),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(height: 12),
                  AccountTabs(
                    tapMe: () {},
                    title1: 'Withdraw',
                    title2: 'We provides a great withdrawal experience.',
                    iconimage: AssetImage('images/withdraw.png'),
                  ),
                  SizedBox(height: 8),
                  AccountTabs(
                    tapMe: () {
                      Navigator.pushNamed(context, AccountSettings.id);
                    },
                    title1: 'Bank Account Setting',
                    title2: 'This setup is required for withrawal',
                    iconimage: AssetImage('images/safe-shield.png'),
                  ),
                  SizedBox(height: 8),
                  AccountTabs(
                    tapMe: () {},
                    title1: 'Payment Card',
                    title2: 'Add and manage payment cards',
                    iconimage: AssetImage('images/atm-card.png'),
                  ),
                  SizedBox(height: 8),
                  AccountTabs(
                    tapMe: () {},
                    title1: 'Invite a friend',
                    title2: 'Don’t enjoy alone',
                    iconimage: AssetImage('images/gift.png'),
                  ),
                  SizedBox(height: 185),
                ],
              )),
        ),
      ),
    );
  }
}
