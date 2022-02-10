import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String name;

  const CustomChip({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(color: Colors.deepOrange)),
      child: Text(name,
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black45,
          )),
    );
  }
}
