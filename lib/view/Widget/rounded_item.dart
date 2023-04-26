import 'package:flutter/material.dart';


class RoundedItem extends StatelessWidget {
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
              child:  Container(
                width: 45.0,
                height: 45.0,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            );
          } else {
            return  Row(
              children: <Widget>[
                InkWell(
                  onTap: (() {}),
                  child:  Container(
                    width: 45.0,
                    height: 45.0,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(25.0)),
                      ),
                      ),
                )
              ],
            );
          }
        },

      ),
    );
  }
}
