// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:birthday_app/components/dropdownflow.dart';
import 'package:birthday_app/components/primarybutton.dart';
import 'package:birthday_app/events_congratulations.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import 'components/primarytextfield.dart';

class CreateEvent extends StatefulWidget {
  static const id = 'create_event';

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final eventtitleController = TextEditingController();
  final descriptionController = TextEditingController();
  final categoryController = TextEditingController();
  final targetamountController = TextEditingController();

  @override
  void dispose() {
    eventtitleController.dispose();
    descriptionController.dispose();
    categoryController.dispose();
    targetamountController.dispose();

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
            'Create Event',
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
                SizedBox(
                  height: 141.95,
                  width: 226.59,
                  child: Image(
                    image: AssetImage('images/Hero Image.png'),
                  ),
                ),
                SizedBox(height: 48),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'December, 2022',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2C3149),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Mon',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '27',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffBDBDBD),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Tue',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '28',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffBDBDBD),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Wed',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '29',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffBDBDBD),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 37,
                          height: 66,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffD1F8ED)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Thu',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff17CCA4),
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                '30',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff17CCA4),
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Fri',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Sat',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Sun',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2C3149),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 48),
                DottedBorder(
                  borderType: BorderType.RRect,
                  strokeCap: StrokeCap.round,
                  dashPattern: [6, 3],
                  color: Color(0xffA4E1DA),
                  radius: Radius.circular(10),
                  child: Container(
                    height: 135,
                    width: 366,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 38),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: Image(
                            image: AssetImage('images/upload.png'),
                          ),
                        ),
                        SizedBox(height: 14.67),
                        Text(
                          'UPLOAD FEATURED IMAGE',
                          style: TextStyle(
                              color: Color(0xff888C91),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event Title',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(controller: eventtitleController),
                    SizedBox(height: 24),
                    Text(
                      'Description',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      height: 104,
                      child: TextField(
                        maxLines: 4,
                        controller: descriptionController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Category',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    DropDownFlow(),
                    SizedBox(height: 24),
                    Text(
                      'Target amount',
                      style: TextStyle(
                        color: Color(0xff17DBA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    PrimaryTextfield(
                        controller: targetamountController,
                        keyboardType: TextInputType.number),
                  ],
                ),
                SizedBox(height: 48),
                PrimaryButton(
                    title: 'CREATE EVENT',
                    tapMe: () {
                      Navigator.pushNamed(context, EventsCongratulations.id);
                    }),
                SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
