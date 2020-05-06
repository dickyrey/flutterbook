import 'package:flutter/material.dart';
import 'package:flutterbook/book_card.dart';
import 'package:flutterbook/book_card_primary.dart';
import 'package:flutterbook/book_detail.dart';
import 'package:flutterbook/book_model.dart';
import 'package:flutterbook/fade_in_animation.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Flutter books",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black54,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 17.0),
          child: Column(
            children: [
              FadeInAnimation(
                  delay: 1,
                  child: Image.asset("images/pic1.png", fit: BoxFit.contain)),
              SizedBox(height: 30.0),
              FadeInAnimation(
                delay: 2,
                child: Padding(
                  padding: EdgeInsets.only(right: 17.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
              Container(
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
              SizedBox(height: 15.0),
              FadeInAnimation(
                delay: 3,
                child: Padding(
                  padding: EdgeInsets.only(right: 17.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
              SizedBox(height: 15.0),
              ListView.builder(
                itemCount: dummyBook.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
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
      ),
    );
  }
}
