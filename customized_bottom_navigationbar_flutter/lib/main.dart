// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:customized_bottom_navigationbar_flutter/screens/home_page.dart';
import 'package:customized_bottom_navigationbar_flutter/screens/message_page.dart';
import 'package:customized_bottom_navigationbar_flutter/screens/setting_page.dart';
import 'package:customized_bottom_navigationbar_flutter/screens/users_page.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomizedBottomNavigationbar(),
    );
  }
}

class CustomizedBottomNavigationbar extends StatefulWidget {
  CustomizedBottomNavigationbar({Key? key}) : super(key: key);

  @override
  _CustomizedBottomNavigationbarState createState() =>
      _CustomizedBottomNavigationbarState();
}

//$$$$$$$$$$$$$$$$$$$$$$$$$
//** Instagram :
//  ** @CodeWithFlexz
// ----------------
//** Github :
//  ** AmirBayat0
// ----------------
//** Youtube :
//  ** Programming with Flexz
//$$$$$$$$$$$$$$$$$$$$$$$$$

class _CustomizedBottomNavigationbarState
    extends State<CustomizedBottomNavigationbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }

// * Body Section Components
  bodySection() {
    switch (index){
      case 0:
        return HomePage();
      case 1 :
        return UserPage();
      case 2 :
        return MessagesPage();
      case 3:
        return SettingPage();
    }
  }

// * BottomNavigationBar Section Components
  customBottomNavigationBar() {
    return BottomNavyBar(
      selectedIndex: index,
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.red,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Messages'),
          activeColor: Colors.pink,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.blue,
          textAlign: TextAlign.center,
        ),
      ],
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }
}
