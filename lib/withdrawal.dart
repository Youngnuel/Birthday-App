// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'components/primarybutton.dart';

class Withdrawal extends StatelessWidget {
  static const id = 'withdrawal';

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
                            Stack(children: [
                              SizedBox(
                                height: 64,
                                width: 66,
                                child: Image(
                                  image: AssetImage('images/clouds.png'),
                                ),
                              ),
                              Image(
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
                      RichText(
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
                      )
                    ],
                  ),
                ),
                SizedBox(height: 98),
                PrimaryButton(title: 'WITHDRAWAL', tapMe: () {}),
                SizedBox(height: 32)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
