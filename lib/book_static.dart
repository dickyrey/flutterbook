import 'package:flutter/material.dart';

class BookStatic extends StatelessWidget {
  final String total;
  final IconData icon;
  BookStatic({this.total, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black45,
            size: 15.0,
          ),
          SizedBox(width: 7.0),
          Text(total,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14.0,
              ))
        ],
      ),
    );
  }
}
