import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';

// ignore: must_be_immutable
class LargeText extends StatelessWidget {
  final String text;
  final  Color ?color;
  final  double ?size;

  LargeText(
      {Key? key,
      required this.text,
      this.color ,
      this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size??3.h(context), fontWeight: FontWeight.bold, color: color?? Colors.black87),
    );
  }
}
