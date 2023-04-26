import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBar extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final double cursorRadius;
  Color textColor;
  //final String hintText;
  SearchBar(
      {Key? key,
      required this.cursorRadius,
      this.textColor = const Color(0xff1c1b1b),
    //  required this.hintText,
      this.onChanged})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      height: 45.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.2,
            color: Colors.black26,
          )),
      child: TextField(
        onChanged: widget.onChanged,
        cursorRadius: Radius.circular(widget.cursorRadius),
        decoration: const InputDecoration(
          border: InputBorder.none,
          //hintText: "hintText",
          prefixIcon: Icon(Icons.search, color: Colors.black54),
          hintStyle: TextStyle(color: Colors.grey,
              fontWeight: FontWeight.w200),
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,

        ),
      ),
    );
  }
}
