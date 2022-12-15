// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:class_app/screens/screen_column.dart';
import 'package:class_app/screens/screen_container.dart';
import 'package:class_app/screens/screen_padding.dart';
import 'package:class_app/screens/screen_row.dart';
import 'package:class_app/screens/text_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My simple app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextScreen())),
              },
              leading: Icon(Icons.title),
              subtitle: Text("Introduction to flutter text"),
              title: Text("Text"),
            ),
            ListTile(
              onTap: (() => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenContainer()))
              }),
              leading: Icon(Icons.star),
              subtitle: Text("Introduction to flutter container"),
              title: Text("Container"),
            ),
            ListTile(
              onTap: (() => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenRow()))
              }),
              title: Text("Row"),
              leading: Icon(Icons.title),
              subtitle: Text("Implementing row widget"),
            ),
            ListTile(
              title: Text("Padding layout"),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenPadding()))
              },
            ),
            ListTile(
              title: Text("Column layout"),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenColumn()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
