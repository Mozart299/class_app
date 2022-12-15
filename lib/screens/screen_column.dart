// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenColumn extends StatelessWidget {
  const ScreenColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
