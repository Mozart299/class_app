// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

Widget single_list_item(String title, String caption) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
    child: Column(
      children: [
        Text(
          '${title}',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
        ),
        Text(
          '${caption}',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade700,
              fontSize: 16),
        ),
      ],
    ),
  );
}
