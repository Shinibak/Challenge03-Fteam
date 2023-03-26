import 'package:design_system/src/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xff20232a),
      scaffoldBackgroundColor: const Color(0xff1f222a),
      iconTheme: const IconThemeData(color: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Color(0xff6963db),
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(fontSize: 10, color: Colors.white),
        button: TextStyle(fontSize: 14, color: Colors.white),
        bodyText1: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        bodyText2: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        subtitle1: TextStyle(fontSize: 16, color: Colors.white),
        subtitle2: TextStyle(fontSize: 14, color: Colors.white),
        caption: TextStyle(fontSize: 12, color: Colors.white),
        overline: TextStyle(fontSize: 10, color: Colors.white),
      ),
      extensions: <ThemeExtension<dynamic>>[
        ThemeCustom(
          buttonColorOn: const Color(0xfff1fa88),
          buttonColorOff: Colors.transparent,
          notificationColorOn: const Color(0xff5650c8),
          notificationColorOff: const Color.fromARGB(255, 80, 80, 80),
          buttonTextOnStyle: const TextStyle(fontSize: 14, color: Colors.black),
          buttonTestOffStyle:
              const TextStyle(fontSize: 14, color: Colors.white),
          buttonIconColorOn: Colors.black,
          buttonIconColorOff: Colors.white,
          mutedIcon: Colors.white,
          todoColorOn: const Color(0xff000000),
          todoColorOff: const Color(0xff16171b),
          lateStyle: const TextStyle(fontSize: 10, color: Colors.red),
        ),
      ],
    );
