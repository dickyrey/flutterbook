import 'package:flutter/material.dart';
import 'package:book_app/book_model.dart';
import 'package:book_app/book_static.dart';
import 'package:book_app/custom_chip.dart';
import 'package:book_app/fade_bottom_animation.dart';
import 'package:book_app/fade_in_animation.dart';
import 'package:book_app/fade_top_animation.dart';

class BookDetail extends StatelessWidget {
  final Book book;

  const BookDetail({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black54,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Flutter Books",
          style: TextStyle(
              fontSize: 17.0,
              color: Colors.black54,
              fontWeight: FontWeight.w300),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart,
            color: Colors.black54,
            size: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
          ),
          Icon(
            Icons.share,
            color: Colors.black54,
            size: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeTopAnimation(
                  delay: 1,
                  child: Center(
                    child: Image.asset(
                      book.urlimage,
                      fit: BoxFit.contain,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        book.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 2,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                ),
                const SizedBox(height: 12.0),
                FadeBottomAnimation(
                  delay: 3,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        BookStatic(icon: Icons.cloud_download, total: "12.7k"),
                        SizedBox(width: 9.0),
                        BookStatic(icon: Icons.favorite_border, total: "15.2k"),
                        SizedBox(width: 9.0),
                        BookStatic(icon: Icons.remove_red_eye, total: "13.5k"),
                      ],
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 4,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        "\$${book.price}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                FadeBottomAnimation(
                  delay: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 2.0,
                        runSpacing: 8.0,
                        children: const [
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Financial")),
                          FadeInAnimation(
                              delay: 6,
                              child: CustomChip(name: "Technologies")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Economic")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Fantasy")),
                          FadeInAnimation(
                              delay: 6, child: CustomChip(name: "Popular")),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Added animation ^^
