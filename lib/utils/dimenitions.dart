import 'package:flutter/material.dart';
extension XSizer on num {
  double h(BuildContext context) => MySizer.heightPercent(this / 100, context);

  double w(BuildContext context) => MySizer.widthPercent(this / 100, context);

  SizedBox x(BuildContext context) =>
      SizedBox(height: MySizer.heightPercent(this / 100, context));

  SizedBox y(BuildContext context) =>
      SizedBox(width: MySizer.widthPercent(this / 100, context));
}


class MySizer {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double widthPercent(double percent, BuildContext context) =>
      MediaQuery.of(context).size.width * percent;

  static double heightPercent(double percent, BuildContext context) =>
      MediaQuery.of(context).size.height * percent;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static bool isMobile(BuildContext context) => width(context)<400;
}

class AppColors{


  static Color backgroundApp = Colors.lightGreen.shade50;
  static Color mainColor = Color.fromRGBO(74, 141, 94, 1);
  static Color borderColor = Colors.grey.shade100;
}


class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),

  ];
}

