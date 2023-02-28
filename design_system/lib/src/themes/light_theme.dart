import 'package:flutter/material.dart';
import 'theme_extensions.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  extensions: <ThemeExtension<dynamic>>[
    ThemeCustom(
      caption: const TextStyle(fontSize: 12),
      subtitle1: const TextStyle(fontSize: 16),
      subtitle2: const TextStyle(fontSize: 14),
      overline1: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      overline2: const TextStyle(fontSize: 10),
    ),
  ],
);
