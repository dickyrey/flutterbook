import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String name;
  CustomChip({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(color: Colors.deepOrange)),
      child: Text(name,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black45,
          )),
    );
  }
}
