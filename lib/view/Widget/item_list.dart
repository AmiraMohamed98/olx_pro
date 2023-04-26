import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/rounded_container.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            //first row is horizontal scroll
            return InkWell(
              onTap: (() {}),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                    margin: EdgeInsets.all( 5.0),


                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "http://www.gstatic.com/webp/gallery/1.jpg",
                          fit: BoxFit.fill,
                          height: 120.0,
                          width: 130.0,
                        ),
                        // RoundedContainer(
                        //     radiusSize: 15.0,
                        //     background: Colors.black12,
                        //     borderColor: Colors.grey,
                        //     child: SizedBox(
                        //       height: 15.0,
                        //     )),
                        // const SizedBox(
                        //   height: 5.0,
                        // ),
                        Text("اسم المنتج",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: AppColors.mainColor)),
                        Text("سعر المنتج",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: AppColors.mainColor))
                      ],
                    )),
              ),
            );
          } else {
            return  Row(
              children: <Widget>[
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                        margin: const EdgeInsets.all( 5.0),

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Image.network(
                              "http://www.gstatic.com/webp/gallery/1.jpg",
                              fit: BoxFit.fill,
                              height: 120.0,
                              width: 130.0,
                            ),
                            // RoundedContainer(
                            //     radiusSize: 15.0,
                            //     background: Colors.black12,
                            //     borderColor: Colors.grey,
                            //     child: SizedBox(
                            //       height: 15.0,
                            //     )),
                            // const SizedBox(
                            //   height: 5.0,
                            // ),
                            Text("اسم المنتج",
                                style: TextStyle(
                                  ////
                                    fontSize: 30.0,
                                    color: AppColors.mainColor)),
                            Text("سعر المنتج",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    color: AppColors.mainColor))
                          ],
                        )),
                  ),
                )
              ],
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
      ),
    );
  }
}
