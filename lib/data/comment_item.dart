import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:olx/utils/dimenitions.dart';

import '../view/Widget/genral_text.dart';

class CommentItem extends StatefulWidget {
  const CommentItem({Key? key}) : super(key: key);

  @override
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if (index == 0) {
          //first row is horizontal scroll
          return InkWell(
            child: Container(
              height: 12.h(context),
              color: Colors.blueGrey[100],
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.chat_bubble_outline_rounded,
                        color: Colors.grey,
                      ),
                      GentalText(
                        text: "احمد علي",
                        height: 1.5.h(context),
                      ),
                      20.y(context),
                      RatingBar(
                          initialRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 1.h(context),
                              ),
                              half: Icon(Icons.star_half,
                                  color: Colors.orange,
                                size: 1.h(context),
                              ),
                              empty: Icon(Icons.star_outline,
                                  color: Colors.orange,
                                size: 1.h(context),
                              )),
                          onRatingUpdate: (value) {
                            setState(() {
                              //_ratingValue = value;
                            });
                          }),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:1.w(context)),
                    child: GentalText(
                      text:
                          "         لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور",
                      height: 1.5.h(context),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return InkWell(
            child: Container(
              height: 12.h(context),
              color: Colors.blueGrey[100],
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.chat_bubble_outline_rounded,
                        color: Colors.grey,
                      ),
                      GentalText(
                        text: "احمد علي",
                        height: 1.5.h(context),
                      ),
                      20.y(context),
                      RatingBar(
                          initialRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full: SizedBox.fromSize(
                               size: Size.fromWidth(15.0),
                                child:
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 1.h(context),
                                ),
                              ),
                              half: Icon(Icons.star_half,
                                color: Colors.orange,
                                size: 1.h(context),
                              ),
                              empty: Icon(Icons.star_outline,
                                color: Colors.orange,
                                size: 1.h(context),
                              )),
                          onRatingUpdate: (value) {
                            setState(() {
                              //_ratingValue = value;
                            });
                          }),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.w(context)),
                    child: GentalText(
                      text:
                      "         لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور",
                      height: 1.5.h(context),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
      // return GridView.count(
      //   shrinkWrap: true,
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 5.0,
      //   mainAxisSpacing: 10.0,
      //   physics: ScrollPhysics(),
      //   children: [
      //
      //  );
      //},
    );
  }
}
