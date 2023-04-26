import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';

class MyAdds extends StatefulWidget {
  const MyAdds({Key? key}) : super(key: key);

  @override
  State<MyAdds> createState() => _MyAddsState();
}

class _MyAddsState extends State<MyAdds>  with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {

    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        minimum: EdgeInsets.symmetric(
            vertical: 5.h(context), horizontal: 1.w(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            Container(
              width: 98.w(context),
              height: 30.h(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child:  ImageFade(
                //alignment: Alignment.bottomCenter,
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg/897px-Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg',
                ),
                fit: BoxFit.cover,
                // scale: 2,
                placeholder: Image.asset( "assets/images/icon.png"),
              ),
            ),
                GentalText(text: "أعلان معروض",height: 1.8.h(context),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GentalText(text: "Giza,6th Octobr",height: 1.5.h(context),color: AppColors.mainColor,),
                    Icon(Icons.location_on_outlined,color: AppColors.mainColor,)
                  ],
                ),





              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabBar(

                    controller: _tabController,
                    indicator: BoxDecoration(
                        color: Colors.green

                    ),
                    // dividerColor: Colors.green,
                    // indicatorColor: Colors.green,
                    labelColor:Colors.grey,
                    tabs: [
                      Tab(
                        text: "معلومات البائع" ,

                      ),
                      Tab(
                        text: "وصف الاعلان" ,

                      ),
                      Tab(
                        text: "تفاصيل الاعلان" ,

                      )

                    ]),
                TabBarView(
                  controller: _tabController,
                  children: [
                    Center(
                      child: Text(
                        'Basic Settings',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Basic Settings',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Advanced Settings',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],)
              ],
            ),
          ],
        ),

      ),
    );
  }
}
