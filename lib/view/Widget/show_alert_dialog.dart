
import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget agreeButton = InkWell(
    child: RoundedContainer(
      width: 35.w(context),
        height: 3.9.h(context),
        background:Colors.green,
        child: Center(child: GentalText( text:"نعم",color: Colors.white,height: 2.h(context),))),
    onTap:  () {},
  );
  Widget cancelButton = InkWell(
    child: RoundedContainer(
        width: 35.w(context),
        height: 3.9.h(context),
        background:Colors.white,
        child: Center(child: GentalText( text:"لأ",color: Colors.black,height: 2.h(context),))),
    onTap:  () {},
  );


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("هل تم بيع المنتج ؟"),
    content: Text("لا يمكنك الرجوع في القرار إذا أخترت نعم"),
    actions: [
      cancelButton,
      agreeButton,


    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


