import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        minimum: EdgeInsets.symmetric(
            vertical: 1.h(context), horizontal: 1.w(context)),
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 20.h(context),
                    width: 100.w(context),
                    color: AppColors.mainColor,
                    child: Column(
                      children: [
                        Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: Container(
                              child: LargeText(
                                text: "حسابك",
                                color: Colors.white,
                              ),
                            )),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            child: ClipRect(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(55.0),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.white,
                                  ),
                                ),
                                child:ImageFade(
                                  placeholder: Image.asset( "assets/images/icon.png"),
                                  alignment: Alignment.bottomCenter,
                                  image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg/897px-Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                 // scale: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Column(
                  children: [
                    LargeText(
                      text: "Marwan Mohamed",
                    ),
                    3.x(context),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom:
                            BorderSide(color: Colors.black12, width: 1.3),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GentalText(text: "المفضله"),
                              65.y(context),
                              const Icon(Icons.arrow_forward_ios),
                            ]),
                      ),
                    ),
                    1.x(context),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom:
                            BorderSide(color: Colors.black12, width: 1.3),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GentalText(text: "تغير كلمه المرور"),
                              53.y(context),
                              const Icon(Icons.arrow_forward_ios),
                            ]),
                      ),
                    ),
                    1.x(context),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom:
                            BorderSide(color: Colors.black12, width: 1.3),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GentalText(text: "اللغه"),
                              72.y(context),
                              const Icon(Icons.arrow_forward_ios),
                            ]),
                      ),
                    ),
                    1.x(context),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom:
                            BorderSide(color: Colors.black12, width: 1.3),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GentalText(text: "الدعم"),
                              70.y(context),
                              Icon(
                                Icons.help_outline,
                              ),
                            ]),
                      ),
                    ),
                    1.x(context),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            bottom:
                            BorderSide(color: Colors.black12, width: 1.3),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GentalText(text: "تسجيل الخروج"),
                              55.y(context),
                              const Icon(Icons.logout_rounded),
                            ]),
                      ),
                    ),
                    1.x(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
