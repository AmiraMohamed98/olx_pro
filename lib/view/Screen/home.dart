import 'package:flutter/material.dart';
import 'package:olx/data/category_item.dart';
import 'package:olx/data/comment_item.dart';
import 'package:olx/data/favorite_item.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/auto_page_view.dart';
import 'package:olx/view/Widget/hieght_between.dart';
import 'package:olx/view/Widget/item_list.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';
import 'package:olx/view/Widget/searchbar.dart';
import 'package:olx/view/Widget/genral_text.dart';
import '../Widget/rounded_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      minimum: EdgeInsets.only(
        top: 10.h(context), ),
      child: Column(
        children: [
          Expanded(
              child: CommentItem()),
        ],
      ),
    ),
      // body: SingleChildScrollView(
      //   child: Container(
      //     margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
      //     child:
      //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //       Row(
      //         children: [
      //           Icon(
      //             Icons.location_city,
      //             color: Color.fromARGB(255, 84, 202, 153),
      //           ),
      //           GentalText(text: "مصر ,الجيزه"),
      //         ],
      //       ),
      //       HeightBetween(),
      //       SearchBar(cursorRadius: 10.0),
      //       HeightBetween(),
      //       RoundedContainer(
      //         height: 150.0,
      //         radiusSize: 15.0,
      //         borderColor: Colors.brown,
      //         background: Colors.deepOrange,
      //         child: AutoPageView(
      //           pages: [
      //             Image.network(
      //               "http://www.gstatic.com/webp/gallery/1.jpg",
      //               width: 100.0,
      //             ),
      //             Image.network(
      //               "http://www.gstatic.com/webp/gallery/1.jpg",
      //               fit: BoxFit.cover,
      //               width: 100.0,
      //
      //             ),
      //             Image.network(
      //               "http://www.gstatic.com/webp/gallery/1.jpg",
      //               fit: BoxFit.fill,
      //               width: 100.0,
      //             ),
      //           ],
      //           duration: Duration(seconds: 3),
      //         ),
      //       ),
      //       LargeText(text: "تصفح الاقسام"),
      //       SizedBox( height: 45.0,child: RoundedItem()),
      //       LargeText(text: " الاعلانات"),
      //       Container(
      //         height: 200.0,
      //       child: ItemList()),
      //       InkWell(
      //         child: Row(
      //           children: [
      //             Text("المزيد",style: TextStyle(
      //               ///////
      //               fontSize: 30.0
      //             ),),
      //             Icon(Icons.arrow_forward_rounded)
      //           ],
      //         ),
      //       ),
      //       HeightBetween(),
      //       Container(height: 1,color: Colors.grey,),
      //           HeightBetween(),
      //           HeightBetween(),
      //       LargeText(text: " حولك"),
      //       Container(height: 200.0, child: ItemList()),
      //           InkWell(
      //             child: Row(
      //               children: [
      //                 Text("المزيد",style: TextStyle(
      //                   //////
      //                     fontSize: 30.0
      //                 ),),
      //                 Icon(Icons.arrow_forward_rounded)
      //               ],
      //             ),
      //           ),
      //           HeightBetween(),
      //           Container(height: 1,color: Colors.grey,),
      //     ]),
      //   ),
      // ),
    );
  }
}
