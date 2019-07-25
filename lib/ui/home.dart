import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'detail.dart';
import 'profile.dart';
import 'search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _widgetList = <Widget>[Detail(), Search(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: SafeArea(
          child: _widgetList.elementAt(_selectedIndex),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconData(0xe801, fontFamily: 'Icons')),
            title: Text(
              'Home',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(0xe800, fontFamily: 'Icons')),
            title: Text(
              'Search',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(0xe82a, fontFamily: 'Icons')),
            title: Text(
              'Profile',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
