import 'dart:ui';

import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  return ThemeData(
      primaryColor: const Color(0x31C0F4),
      // colorScheme: const ,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
      ).apply(
        fontFamily: 'Roboto',
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Color.fromRGBO(49, 192, 244, 1),
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(49, 192, 244, 1),
              fixedSize: const Size(300, 56),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));
}
