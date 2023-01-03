// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

import '../widgets/my_widgets.dart';

class ScreenList extends StatefulWidget {
  const ScreenList({super.key});

  @override
  State<ScreenList> createState() => _ScreenListState();
}

class _ScreenListState extends State<ScreenList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen list'),
      ),
      body: ListView(
        children: <Widget>[
          single_list_item('Uganda', 'Kampala'),
          single_list_item('Kenya', 'Nairobi'),
          single_list_item('Tanzania', 'Daressalaam'),
          single_list_item('Ghana', 'Accra'),
          single_list_item('Egypt', 'Cairo'),
          single_list_item('Morroco', 'Casablanca'),
          single_list_item('Rwanda', 'Kigali'),
        ],
      ),
    );
  }
}
