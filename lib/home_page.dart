import 'package:flutter/material.dart';
import 'package:book_app/book_card.dart';
import 'package:book_app/book_card_primary.dart';
import 'package:book_app/book_detail.dart';
import 'package:book_app/book_model.dart';
import 'package:book_app/fade_in_animation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Flutter books",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black54,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 17.0),
        child: Column(
          children: [
            FadeInAnimation(
                delay: 1,
                child: Image.asset("images/pic1.png", fit: BoxFit.contain)),
            const SizedBox(height: 30.0),
            FadeInAnimation(
              delay: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 17.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular books",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black38,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 230.0,
              child: ListView.builder(
                itemCount: dummyBook.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var book = dummyBook[index];
                  return FadeInAnimation(
                    delay: 2,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookDetail(
                                  book: book,
                                ),
                              ));
                        },
                        child: BookCardPrimary(book: book)),
                  );
                },
              ),
            ),
            const SizedBox(height: 15.0),
            FadeInAnimation(
              delay: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 17.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "You may also like",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "view",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            ListView.builder(
              itemCount: dummyBook.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                var book = dummyBook[index];
                return FadeInAnimation(
                  delay: 3,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDetail(
                                book: book,
                              ),
                            ));
                      },
                      child: BookCardWidget(book: book)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
