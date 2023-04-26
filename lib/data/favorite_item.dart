import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {



  //_FavoriteItemState(this.background, this.icon);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if (index == 0) {
          //first row is horizontal scroll
          return InkWell(
            child:  Container(
              height: 11.5.h(context),
              child: Column(
                children: <Widget>[
                  Container(
                    color:  Colors.greenAccent[100],
                    padding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 3.0),
                    child: Row(
                      children: [
                        ImageFade(
                          alignment: Alignment.bottomCenter,
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg/897px-Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg',
                          ),
                          fit: BoxFit.cover,
                          scale: 2,
                          width: 9.h(context),
                        ),
                        0.5.y(context),
                        Column(
                          children: [
                            GentalText(text: "شقه 75 متر للبيع",height: 1.5.h(context),),
                            Row(
                              children: [
                                GentalText(text: "Giza,6th Octobr",height: 1.5.h(context),color: AppColors.mainColor,),
                                Icon(Icons.location_on_outlined,color: AppColors.mainColor,)
                              ],
                            ),
                          ],
                        ),
                        29.y(context),
                        5.x(context),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [

                                InkWell(child: Icon(Icons.share_outlined,color: AppColors.mainColor,)),
                                2.y(context),
                                InkWell(child: Icon(Icons.favorite_outline_rounded,color: AppColors.mainColor,))
                              ],
                            ),
                            1.x(context),
                            GentalText(text: "150,000 EGP",height: 1.6.h(context),),

                          ],
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return InkWell(
            child:  Container(
              height: 11.5.h(context),
              child: Column(
                children: <Widget>[
                  Container(
                    color:  Colors.greenAccent[100],
                    padding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 3.0),
                    child: Row(
                      children: [
                        ImageFade(
                          alignment: Alignment.bottomCenter,
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg/897px-Hans_Holbein_der_Jüngere_-_Der_Kaufmann_Georg_Gisze_-_Google_Art_Project.jpg',
                          ),
                          fit: BoxFit.cover,
                          scale: 2,
                          width: 9.h(context),
                        ),
                        0.5.y(context),
                        Column(
                          children: [
                            GentalText(text: "شقه 75 متر للبيع",height: 1.5.h(context),),
                            Row(
                              children: [
                                GentalText(text: "Giza,6th Octobr",height: 1.5.h(context),color: AppColors.mainColor,),
                                Icon(Icons.location_on_outlined,color: AppColors.mainColor,)
                              ],
                            ),
                          ],
                        ),
                        29.y(context),
                        5.x(context),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [

                                InkWell(child: Icon(Icons.share_outlined,color: AppColors.mainColor,)),
                                2.y(context),
                                InkWell(child: Icon(Icons.favorite_outline_rounded,color: AppColors.mainColor,))
                              ],
                            ),
                            1.x(context),
                            GentalText(text: "150,000 EGP",height: 1.6.h(context),),

                          ],
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },

    );

  }
}
