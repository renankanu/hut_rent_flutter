import 'package:flutter/material.dart';

import './ui/login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hut in Rent Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFFF9A825),
          unselectedWidgetColor: Color(0xFF3D6D85)),
      home: Login(),
    );
  }
}
