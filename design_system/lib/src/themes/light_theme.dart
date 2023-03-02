import 'package:flutter/material.dart';
import 'theme_extensions.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.black),
  textTheme:  TextTheme(
    titleMedium: const TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: const TextStyle(fontSize: 16, color: Colors.black),
    subtitle2: const TextStyle(fontSize: 14, color: Colors.black),
    caption: const TextStyle(fontSize: 12, color: Colors.black),
    overline: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodySmall: const TextStyle(fontSize: 10, color: Colors.black),
  ),
  extensions: <ThemeExtension<dynamic>>[
    ThemeCustom(
    
      buttonColorOn: Colors.deepOrange,
      buttonColorOff: Colors.transparent,
      notificationColorOn: Colors.blue,
      notificationColorOff: Colors.grey,
      buttonTextOnStyle: const TextStyle(fontSize: 14, color: Colors.white),
      buttonTestOffStyle: const TextStyle(fontSize: 14, color: Colors.black),
      buttonIconColorOn: Colors.white,
      buttonIconColorOff: Colors.black,
      mutedIcon: Colors.red,
    ),
  ],
);
