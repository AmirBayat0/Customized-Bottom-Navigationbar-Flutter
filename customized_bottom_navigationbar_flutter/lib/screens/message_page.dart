// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.pink,
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
              Icons.message,
              size: 120,
              color: Colors.white,
            ),
            Text("Messages", style: TextStyle(fontSize: 70, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
