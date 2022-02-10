import 'package:flutter/material.dart';

class BookStatic extends StatelessWidget {
  final String total;
  final IconData icon;

  const BookStatic({
    Key? key,
    required this.total,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black45,
          size: 15.0,
        ),
        const SizedBox(width: 7.0),
        Text(
          total,
          style: const TextStyle(
            color: Colors.black45,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
