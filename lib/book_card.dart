import 'package:flutter/material.dart';
import 'package:book_app/book_model.dart';

class BookCardWidget extends StatelessWidget {
  final Book book;

  const BookCardWidget({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170.0,
      padding: const EdgeInsets.only(bottom: 12.0, right: 15.0),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              height: 130.0,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 120.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        book.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        book.description,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 2.0),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Container(
              width: 90.0,
              height: 135.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  image: DecorationImage(
                    image: AssetImage(book.urlimage),
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
