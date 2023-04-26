import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';
import 'package:olx/view/Widget/text_form.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        top: true,
        bottom: false,
        left: true,
        right: true,
        minimum: EdgeInsets.symmetric(
            vertical: 6.h(context),
            horizontal: 0.5.w(context)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                  child: LargeText(text: "إنشاء حساب")),
              3.x(context),
              TextForm(
                hint: "الاسم",
                keyboardType: TextInputType.text,
                borderRadius: 10.0,
              ),
              0.2.x(context),
              TextForm(
                hint: "البريد الألكتروني",
                borderRadius: 10.0,
                keyboardType: TextInputType.emailAddress,
              ),
              0.2.x(context),
              TextForm(
                hint: "رقم الهاتف",
                borderRadius: 10.0,
                keyboardType: TextInputType.number,
              ),
              0.2.x(context),
              TextForm(
                hint: "كلمة المرور",
                borderRadius: 10.0,
                widget: Icon(Icons.visibility_off_outlined),
                keyboardType: TextInputType.visiblePassword,
              ),
              0.2.x(context),
              TextForm(
                hint: "تأكيد كلمة المرور",
                borderRadius: 10.0,
                widget: Icon(Icons.visibility_off_outlined),
                keyboardType: TextInputType.visiblePassword,
              ),
              2.x(context),
              RoundedContainer(
                height: 7.h(context),
                child: InkWell(child: Center(child:
                GentalText(text: "إنشاء حساب",color: Colors.white,))),
              ),
              2.x(context),
              RoundedContainer(
                background: Colors.white,
                radiusSize: 10.0,
                height: 6.8.h(context),
                child: InkWell(child: Center(
                  child: Row(
                    children: [
                      20.y(context),
                      GentalText(text: "التسجيل بواسطة جوجل",color: Colors.black,
                      height: 2.h(context),),
                      2.y(context),
                       Image.asset("assets/images/Google_logo.png")
                    ],
                  ),
                )),
              ),
              1.x(context),
              RoundedContainer(
                background: Colors.white,
                radiusSize: 10.0,
                height: 6.8.h(context),
                child: InkWell(child: Center(
                  child: Row(
                    children: [
                      18.y(context),
                      GentalText(text: "التسجيل بواسطة فيسبوك",color: Colors.black,
                        height: 1.9.h(context),),
                      1.y(context),
                      Image.asset("assets/images/fb_logo.png")
                    ],
                  ),
                )),
              ),
              1.x(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GentalText(text: "هل تمتلك حساب بالفعل ؟",color: Colors.black,
                    height: 1.8.h(context),),
                  GentalText(text: "تسجيل الدخول",color: Colors.black,
                    height: 1.8.h(context),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
