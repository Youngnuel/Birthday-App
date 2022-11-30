// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:birthday_app/account.dart';
import 'package:birthday_app/create_event.dart';
import 'package:birthday_app/home_page.dart';
import 'package:birthday_app/notifications.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOPtions = <Widget>[
    HomePage(),
    CreateEvent(),
    Notifications(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: _widgetOPtions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Color(0xff17DBA7),
        backgroundColor: Color(0xffFFFFFF),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/events.png'),
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/notifications.png'),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/account.png'),
            ),
            label: 'Account',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
