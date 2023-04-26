import 'package:flutter/material.dart';
import 'package:olx/data/favorite_item.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/show_alert_dialog.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        minimum: EdgeInsets.only(
          top: 5.h(context), ),
        child: Column(
          children: [
            GentalText(text: "المفضله"),
            Container(
              height: 5.h(context),
              width: 100.w(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      showAlertDialog(context);
                    },
                    child: Container(
                      width: 50.w(context),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GentalText(text: "تصفيه",height: 1.h(context),),
                          Icon(Icons.compare_arrows_rounded)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: 50.w(context),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GentalText(text: "ترتيب",height: 1.h(context),),
                          Icon(Icons.compare_arrows_rounded)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: FavoriteItem()),
          ],
        ),
      ),
    );
  }
}
