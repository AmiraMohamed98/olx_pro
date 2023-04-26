import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.PNG',
      fit: BoxFit.cover,
      width: 150.0,
      height: 150.0,
    );
  }
}
