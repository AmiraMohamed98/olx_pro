import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';

class GentalText extends StatelessWidget {
  final String text;
  final double? height;
  Color color;

  GentalText(
      {Key? key,
        this.height,
      required this.text,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: height??2.5.h(context),
              fontWeight: FontWeight.normal,
              color: color),
    );
  }
}
