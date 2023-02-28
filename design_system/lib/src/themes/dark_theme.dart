import 'package:design_system/src/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
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
