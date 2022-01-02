// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.purpleAccent,
        title: Column(
          children: [
            Text("@CodeWithFlexz"),
            Text("AmirHossein",
                style: TextStyle(fontSize: 15, color: Colors.white70))
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: 120,
              color: Colors.white,
            ),
            Text("Users", style: TextStyle(fontSize: 70, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
