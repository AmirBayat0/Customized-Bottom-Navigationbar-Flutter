// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.red,
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
              Icons.apps,
              size: 120,
              color: Colors.white,
            ),
            Text("Home", style: TextStyle(fontSize: 70, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
