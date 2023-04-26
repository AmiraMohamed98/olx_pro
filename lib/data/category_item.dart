import 'package:flutter/material.dart';

import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if (index == 0) {
          //first row is horizontal scroll
          return InkWell(
            child:  Container(
              height: 4.8.h(context),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 3.0),
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0
                        )
                         )
                    ),
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        GentalText(text: "عقارات",height: 1.8.h(context),),
                        65.y(context),
                        GentalText(text: "(788,930)",height: 1.6.h(context),color: Colors.grey,),
                        Icon(Icons.arrow_back_ios_new_rounded,),




                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return  InkWell(
            child:   Container(
              height: 4.8.h(context),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 3.0),
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0
                            )
                        )
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        GentalText(text: "عقارات",height: 1.8.h(context),),
                        65.y(context),
                        GentalText(text: "(788,930)",height: 1.6.h(context),color: Colors.grey,),
                        Icon(Icons.arrow_back_ios_new_rounded,),




                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },

    );
  }
}
