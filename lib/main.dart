import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:olx/utils/dimenitions.dart';
import 'package:olx/view/Screen/product.dart';
import 'utils/app_theme.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations
            .delegate, // support localization string for Material Widget
        GlobalCupertinoLocalizations
            .delegate, // support localization string for Cupertino Widget
        GlobalWidgetsLocalizations
            .delegate // support localization string for text format from right to left.
      ],
      supportedLocales: L10n.all,
      home:  Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: Product(),
      ),
    );
  }
}
