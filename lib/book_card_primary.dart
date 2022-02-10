import 'package:book_app/book_model.dart';
import 'package:flutter/material.dart';

class BookCardPrimary extends StatelessWidget {
  final Book book;

  const BookCardPrimary({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 230.0,
      margin: const EdgeInsets.only(right: 14.0),
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
          const SizedBox(height: 8.0),
          Text(
            book.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5.0),
          Row(
            children: const [
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
          const SizedBox(height: 5.0),
          Text(
            "\$${book.price}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(
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
