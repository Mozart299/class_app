// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            "This is my container",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                topRight: Radius.elliptical(50, 50)),
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid)),
      ),
    );
  }
}
