import 'package:flutter/material.dart';
import 'package:olx/utils/dimenitions.dart';


class TextForm extends StatelessWidget {
  final String? hint, label;
  final Widget? widget;
  final Widget? prifix;
  final bool? visibility, shadow, readOnly;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final double? height;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final double? borderRadius, border;
  final double? width, margin;
  final int? maxLine;
  final Color? background;
  final int? maxLength;

 const TextForm(
      {Key? key,
      this.hint,
        this.prifix,
      this.maxLength,
      this.widget,
      this.visibility,
      this.controller,
      this.keyboardType,
      this.height,
      this.onChanged,
      this.onTap,
      this.borderRadius,
      this.width,
      this.label,
      this.shadow,
      this.margin,
      this.border,
        this.background,
      this.readOnly,
      this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: width ?? 90.w(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              shadow == true
                  ? const BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12,
                      spreadRadius: 0.02,
                    )
                  : const BoxShadow()
            ],
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
            color:background??Color.fromRGBO(220, 217, 217, 1.0),
            border: Border.all(width: border ?? .3,
                color:Color.fromRGBO(232, 232, 232, 1))),
        margin: EdgeInsets.symmetric(
            vertical: margin ?? 5,
            //horizontal: margin ?? 20
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: height??5.h(context),
        child: TextField(
          obscureText: visibility ?? false,

          readOnly: readOnly ?? false,
          style: const TextStyle(color: Colors.white),
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          onTap: onTap,
          maxLength: maxLength ?? null,
          maxLines: maxLine ?? 1,
          decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              prefixIcon: prifix??null,
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xff9E9E9E)),
              border: InputBorder.none,
              icon: widget ?? const SizedBox()),
        ),
      ),
    );
  }
}
