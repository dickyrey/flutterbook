import 'package:flutter/material.dart';
import 'package:flutterbook/book_model.dart';

class BookCardPrimary extends StatelessWidget {
  final Book book;
  BookCardPrimary({this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 230.0,
      margin: EdgeInsets.only(right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 120.0,
              height: 160.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(book.urlimage),
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            book.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.deepOrange,
                size: 14.0,
              ),
              Icon(
                Icons.star,
                color: Colors.deepOrange,
                size: 14.0,
              ),
              Icon(
                Icons.star,
                color: Colors.deepOrange,
                size: 14.0,
              ),
              Icon(
                Icons.star_half,
                color: Colors.deepOrange,
                size: 14.0,
              ),
              Icon(
                Icons.star_border,
                color: Colors.deepOrange,
                size: 14.0,
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Text(
            "\$${book.price}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
