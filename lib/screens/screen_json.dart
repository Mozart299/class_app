// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class ScreenJson extends StatefulWidget {
  const ScreenJson({super.key});

  @override
  State<ScreenJson> createState() => _ScreenJsonState();
}

class _ScreenJsonState extends State<ScreenJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text('String to json'),
            onTap: () {
              stringToJson();
            },
          )
        ],
      ),
    );
  }
}

void stringToJson() {
  print('String to Json');
}
