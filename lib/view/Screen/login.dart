import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';
import 'package:olx/view/Widget/text_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              LargeText(text: "تسجيل دخول"),
              2.x(context),
              TextForm(
                hint: "البريد الألكتروني",
                keyboardType: TextInputType.emailAddress,
                borderRadius: 10.0,
              ),
              0.2.x(context),

              TextForm(
                visibility: true,
                prifix: Icon(Icons.visibility_off_outlined),
                keyboardType: TextInputType.visiblePassword,
                hint: "كلمة المرور",
                borderRadius: 10.0,

              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  7.y(context),
                  GentalText(text: " نسيت كلمة المرور؟",color: AppColors.mainColor,
                    height: 1.8.h(context),),
                ],
              ),
              2.x(context),
              RoundedContainer(
                height: 7.h(context),
                child: InkWell(child: Center(child:
                GentalText(text: "تسجيل دخول",color: Colors.white,))),
              ),
              5.x(context),
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
              3.x(context),
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
              2.x(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: GentalText(text: "ليس لديك حساب بعد؟",color: Colors.black,
                      height: 1.8.h(context),),
                  ),
                  InkWell(
                    child: GentalText(text: "إنشاء حساب",color: Colors.black,
                      height: 1.8.h(context),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
