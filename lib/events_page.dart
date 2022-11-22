// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:birthday_app/active_event_page.dart';
import 'package:birthday_app/components/events_tabs2.dart';
import 'package:flutter/material.dart';

import 'components/events_tabs.dart';

class EventsPage extends StatefulWidget {
  static const id = 'events_page';

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  var selected = 'active';

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
            child: Container(
              height: 21,
              width: 12,
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Color(0xff2C3149),
              ),
            ),
          ),
          title: Text(
            'Events',
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12),
                  Container(
                    height: 144,
                    width: 366,
                    child: Image(
                      image: AssetImage('images/sliderow1.png'),
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffE4F9F4)),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selected = 'active';
                              });
                            },
                            child: Container(
                              height: 31,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: selected == 'active'
                                      ? Color(0xff17DBA7)
                                      : Colors.transparent),
                              child: Center(
                                child: Text(
                                  'Active Events',
                                  style: TextStyle(
                                      color: selected == 'active'
                                          ? Colors.white
                                          : Color(0xff2C3149),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selected = 'ended';
                              });
                            },
                            child: Container(
                              height: 31,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: selected != 'ended'
                                    ? Colors.transparent
                                    : Color(0xff17DBA7),
                              ),
                              child: Center(
                                child: Text(
                                  'Ended Events',
                                  style: TextStyle(
                                      color: selected != 'ended'
                                          ? Color(0xff2C3149)
                                          : Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  if (selected == 'active') ...[
                    EventsTab(
                        title: 'Beach Party get together',
                        amount1: '₦7,000',
                        amount2: '/11,000'),
                    SizedBox(height: 7),
                    EventsTab(
                        title: 'Graduation Ceremony',
                        amount1: '₦12,000',
                        amount2: '/65,000'),
                    SizedBox(height: 7),
                    EventsTab(
                        title: 'Beach Party',
                        amount1: '₦8,000',
                        amount2: '/16,000'),
                    SizedBox(height: 208)
                  ] else ...[
                    EventsTab2(
                        title: 'Obinna Fidelis Child Dedica...',
                        amount1: '₦13,000',
                        amount2: '/28,000'),
                    SizedBox(height: 12),
                    EventsTab2(
                        title: 'Obinna Fidelis Child Dedica...',
                        amount1: '₦13,000',
                        amount2: '/28,000'),
                    SizedBox(height: 12),
                    EventsTab2(
                        title: 'Obinna Fidelis Child Dedica...',
                        amount1: '₦13,000',
                        amount2: '/28,000'),
                    SizedBox(height: 12),
                    EventsTab2(
                        title: 'Obinna Fidelis Child Dedica...',
                        amount1: '₦13,000',
                        amount2: '/28,000'),
                    SizedBox(height: 26),
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
