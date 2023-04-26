import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';

class RoundedContainer extends StatelessWidget {
  final double? radiusSize;
  final double ?height;
  final double ?width;
  final Color ?background;
  final Color ?borderColor;
  final double ?borderWidth;
  final double topMargin;
  final double topPadding;
  final double bottomMargin;
  final double bottomPadding;
  final double leftMargin;
  final double rightMargin;
  final double leftPadding;
  final double rightPadding;
  final Widget child;
  const RoundedContainer(
      {Key? key,
       this.radiusSize,
        this.width,
       this.background,
       this.borderColor,
      required this.child,
      this.borderWidth = 1.0,
      this.topMargin = 0.0,
      this.topPadding = 0.0,
      this.bottomMargin = 0.0,
      this.bottomPadding = 0.0,
      this.leftMargin = 0.0,
      this.leftPadding = 0.0,
      this.rightMargin = 0.0,
      this.rightPadding = 0.0,
         this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??10.h(context),
      width: width??90.w(context),
      margin: EdgeInsets.only(
          top: topMargin,
          right: rightMargin,
          left: leftMargin,
          bottom: bottomMargin),
      padding: EdgeInsets.only(
          top: topPadding,
          right: rightPadding,
          left: leftPadding,
          bottom: bottomPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radiusSize??50.0)),
        border: Border.all(color: borderColor??Colors.grey, width: borderWidth??1.0),
        color: background??AppColors.mainColor,
      ),
      child: child,
    );
  }
}
