import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';
import 'package:olx/view/Widget/text_form.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body:
          SafeArea(
            top: true,
            bottom: false,
            left: true,
            right: true,
            minimum: EdgeInsets.symmetric(
                vertical: 6.h(context),
                horizontal: 6.w(context)),
            child: SingleChildScrollView(
              child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: LargeText(text: "أرسال رساله للدعم")),
                  1.5.x(context),

                  GentalText(text: "الأسم",height: 2.h(context),),
                  TextForm(
                    background: Colors.white,
                    keyboardType: TextInputType.text,
                    borderRadius: 10.0,

                  ),
                  0.2.x(context),
                  GentalText(text: "البريد الألكتروني",height: 2.h(context),),
                  TextForm(
                    background: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    borderRadius: 10.0,

                  ),
                  0.2.x(context),
                  GentalText(text: "رقم الهاتف",height: 2.h(context),),
                  TextForm(
                    background: Colors.white,
                    keyboardType: TextInputType.number,
                    borderRadius: 10.0,

                  ),
                  GentalText(text: "كتابة الرساله",height: 2.h(context),),
                  TextForm(
                   height: 25.h(context),
                    background: Colors.white,
                    keyboardType: TextInputType.number,
                    borderRadius: 10.0,

                  ),
                  2.x(context),
                  RoundedContainer(
                    height: 4.5.h(context),
                    child: InkWell(child: Center(child:
                    GentalText(text: "أرسال ",color: Colors.white,height: 2.h(context),))),
                  ),

                ],
              ),
            ),
          )

    );
  }
}
