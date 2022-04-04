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
        headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            letterSpacing: .15,
            color: Color(0xFF020303)),
        bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        bodyText2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, .6)),
        caption: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, .6)),
        subtitle2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(0, 0, 0, .87)),
      ).apply(
        fontFamily: 'Roboto',
        // bodyColor: Colors.black,
        // displayColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(49, 192, 244, 1),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      // textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(
      //         primary: Colors.white,
      //         backgroundColor: Color.fromRGBO(49, 192, 244, 1),
      //         textStyle:
      //             const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(49, 192, 244, 1),
              fixedSize: const Size(300, 56),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));
}
