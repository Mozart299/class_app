// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  const ScreenPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
      ),
      body: Padding(
        child: Text("My widget"),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}