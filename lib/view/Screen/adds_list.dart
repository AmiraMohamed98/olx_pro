import 'package:flutter/material.dart';
import 'package:olx/data/favorite_item.dart';
import 'package:olx/data/my_add_item.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/text_form.dart';

class AddsPage extends StatefulWidget {
  const AddsPage({super.key});

  @override
  State<AddsPage> createState() => _AddsPageState();
}

class _AddsPageState extends State<AddsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        minimum: EdgeInsets.only(
          top: 5.h(context), ),
        child: Column(
          children: [
            TextForm(
              borderRadius: 10.0,
              hint:"أدخل أسم الأعلان أو الكود الخاص به",
              widget: Icon(Icons.search_rounded,color: Colors.grey,),
              background: Colors.grey[50],
              border: 1.0,
            ),
            Container(
              height: 5.h(context),
              width: 100.w(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      width: 50.w(context),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey.shade400)
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
                          border: Border.all(width: 1,color: Colors.grey.shade400)
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
                child: MyAddIem()),
          ],
        ),
      ),
    );
  }
}
