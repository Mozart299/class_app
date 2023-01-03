// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScreenImages extends StatefulWidget {
  const ScreenImages({super.key});

  @override
  State<ScreenImages> createState() => _ScreenImagesState();
}

class _ScreenImagesState extends State<ScreenImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Screen'),
      ),
      body: ListView(
        children: [
          Image(image: AssetImage('assets/images/TBL5_GW15-106.jpg')),
          Image(image: AssetImage('assets/images/TBL5_GW15-94.jpg')),
          Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRtUjAxoxGumq_072gMzuaV9vsXNZGbAOzQw&usqp=CAU'))
        ],
      ),
    );
  }
}
