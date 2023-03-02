import 'package:design_system/src/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.white),
  textTheme: TextTheme(
    titleMedium: const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: const TextStyle(fontSize: 16, color: Colors.grey),
    subtitle2: const TextStyle(fontSize: 14, color: Colors.grey),
    caption: const TextStyle(fontSize: 12, color: Colors.grey),
    overline: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodySmall: const TextStyle(fontSize: 10, color: Colors.grey),
  ),
  extensions: <ThemeExtension<dynamic>>[
    ThemeCustom(
      buttonColorOn: Colors.yellow,
      buttonColorOff: Colors.transparent,
      notificationColorOn: Colors.purple,
      notificationColorOff: Colors.grey,
      buttonTextOnStyle: const TextStyle(fontSize: 14, color: Colors.black),
      buttonTestOffStyle: const TextStyle(fontSize: 14, color: Colors.grey),
      buttonIconColorOn: Colors.black,
      buttonIconColorOff: Colors.grey,
      mutedIcon: Colors.grey,
    ),
  ],
);
