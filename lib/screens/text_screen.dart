// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Text(
        "Simple text",
        textAlign: TextAlign.right,
        maxLines: 5,
        style: TextStyle(
          fontSize: 40,
          color: Colors.red.shade400,
          fontWeight: FontWeight.w100,
          backgroundColor: Colors.black,
          
        ),
      ),
    );
  }
}
