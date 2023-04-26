import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';

class ChatItem extends StatefulWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GentalText(text: "يبدو انه لا يوجد رسائل هنا):",height: 2.h(context),),
          GentalText(text: "ابحث عن شئ لتشتريه وابدأ فى الدردشه:",height: 1.5.h(context),),
          5.x(context),
          RoundedContainer(
            height: 6.5.h(context),
            child:  Center(child: GentalText(text: "تصفح الاعلانات",color: Colors.white,height: 2.h(context),)),)
        ],
      ),
    );
  }
}
