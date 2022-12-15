// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenRow extends StatelessWidget {
  const ScreenRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenRow"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
