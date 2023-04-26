import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Widget/genral_text.dart';
import 'package:olx/view/Widget/large_text.dart';
import 'package:olx/view/Widget/rounded_container.dart';

import '../Widget/text_form.dart';

class AddComment extends StatefulWidget {
  const AddComment({Key? key}) : super(key: key);

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
   String ?_selectedLocation;
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

                1.5.x(context),

                GentalText(text: "متي تاريخ الخدمه",height: 2.h(context),),
                DropdownButton<String>(
                  hint: Text('السنه'), // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue!;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child:  Container(
                          width: 80.w(context),
                          child: Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  hint: Text('الشهر'), // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue!;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child:  Container(
                          width: 80.w(context),
                          child: Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
                0.2.x(context),
                GentalText(text: "نوع الخدمه",height: 2.h(context),),
                DropdownButton<String>(
                  hint: Text('السنه'), // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue!;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child:  Container(
                          width: 80.w(context),
                          child: Text(location)),
                      value: location,
                    );
                  }).toList(),
                ),
                0.2.x(context),
                GentalText(text: "تقيمك للخدمه",height: 2.h(context),),

                Center(
                  child: RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: Colors.orange),
                          half: const Icon(
                            Icons.star_half,
                            color: Colors.orange,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Colors.orange,
                          )),
                      onRatingUpdate: (value) {
                        setState(() {
                          //_ratingValue = value;
                        });
                      }),
                ),
                GentalText(text: "إضافة تعليق",height: 2.h(context),),
                TextForm(
                  height: 25.h(context),
                  background: Colors.white,
                  keyboardType: TextInputType.number,
                  borderRadius: 10.0,

                ),
                15.x(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundedContainer(
                     width: 35.w(context),
                      height: 4.h(context),
                      child: InkWell(child: Center(child:
                      GentalText(text: "نشر ",color: Colors.white,height: 2.h(context),))),
                    ),
                    RoundedContainer(
                      width: 35.w(context),
                      height: 4.h(context),
                      child: InkWell(child: Center(child:
                      GentalText(text: "تراجع ",color: Colors.white,height: 2.h(context),))),
                    ),
                  ],
                ),

              ],
            ),
          ),
        )

    );
  }
}
