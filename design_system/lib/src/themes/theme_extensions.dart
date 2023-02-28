import 'package:flutter/material.dart';

class ThemeCustom extends ThemeExtension<ThemeCustom> {
  final TextStyle? caption;
  final TextStyle? subtitle1;
  final TextStyle? subtitle2;
  final TextStyle? overline1;
  final TextStyle? overline2;

  ThemeCustom({
    required this.caption,
    required this.subtitle1,
    required this.subtitle2,
    required this.overline1,
    required this.overline2,
  });

  @override
  ThemeCustom copyWith([
    TextStyle? caption,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? overline1,
    TextStyle? overline2,
  ]) {
    return ThemeCustom(
      caption: caption ?? this.caption,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      overline1: overline1 ?? this.overline1,
      overline2: overline1 ?? this.overline2,
    );
  }

  @override
  ThemeCustom lerp(ThemeExtension<ThemeCustom>? other, double t) {
    if (other is! ThemeCustom) {
      return this;
    }
    return ThemeCustom(
      caption: TextStyle.lerp(caption, other.caption, t),
      subtitle1: TextStyle.lerp(subtitle1, other.subtitle1, t),
      subtitle2: TextStyle.lerp(subtitle2, other.subtitle2, t),
      overline1: TextStyle.lerp(overline1, other.overline1, t),
      overline2: TextStyle.lerp(overline2, other.overline2, t),
    );
  }
}
