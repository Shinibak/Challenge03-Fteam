import 'package:flutter/material.dart';

class ThemeCustom extends ThemeExtension<ThemeCustom> {
  final TextStyle? buttonTextOnStyle;
  final TextStyle? buttonTestOffStyle;
  final Color? buttonColorOn;
  final Color? buttonColorOff;
  final Color? notificationColorOn;
  final Color? notificationColorOff;
  final Color? buttonIconColorOn;
  final Color? buttonIconColorOff;
  final Color? mutedIcon;
  final Color? todoColorOn;
  final Color? todoColorOff;

  ThemeCustom({
    required this.buttonTextOnStyle,
    required this.buttonTestOffStyle,
    required this.buttonColorOn,
    required this.buttonColorOff,
    required this.notificationColorOn,
    required this.notificationColorOff,
    required this.buttonIconColorOn,
    required this.buttonIconColorOff,
    required this.mutedIcon,
    required this.todoColorOn,
    required this.todoColorOff,
  });

  @override
  ThemeCustom copyWith([
    TextStyle? buttonTextOnStyle,
    TextStyle? buttonTestOffStyle,
    Color? buttonColorOn,
    Color? buttonColorOff,
    Color? notificationColorOn,
    Color? notificationColorOff,
    Color? buttonIconColorOn,
    Color? buttonIconColorOff,
    Color? mutedIcon,
    Color? todoColorOn,
     Color? todoColorOff,
  ]) {
    return ThemeCustom(
      buttonTextOnStyle: buttonTextOnStyle ?? this.buttonTextOnStyle,
      buttonTestOffStyle: buttonTestOffStyle ?? this.buttonTestOffStyle,
      buttonColorOn: buttonColorOn ?? this.buttonColorOn,
      buttonColorOff: buttonColorOff ?? this.buttonColorOff,
      notificationColorOn: notificationColorOn ?? this.notificationColorOn,
      notificationColorOff: notificationColorOff ?? this.notificationColorOff,
      buttonIconColorOn: buttonIconColorOn ?? this.buttonIconColorOn,
      buttonIconColorOff: buttonIconColorOff ?? this.buttonIconColorOff,
      mutedIcon: mutedIcon ?? this.mutedIcon,
      todoColorOn: todoColorOn ?? this.todoColorOn,
       todoColorOff: todoColorOff ?? this.todoColorOff,
    );
  }

  @override
  ThemeCustom lerp(ThemeExtension<ThemeCustom>? other, double t) {
    if (other is! ThemeCustom) {
      return this;
    }
    return ThemeCustom(
      buttonTextOnStyle: TextStyle.lerp(
        buttonTextOnStyle,
        other.buttonTextOnStyle,
        t,
      ),
      buttonTestOffStyle: TextStyle.lerp(
        buttonTestOffStyle,
        other.buttonTestOffStyle,
        t,
      ),
      buttonColorOn: Color.lerp(buttonColorOn, other.buttonColorOn, t),
      buttonColorOff: Color.lerp(buttonColorOff, other.buttonColorOff, t),
      notificationColorOn: Color.lerp(
        notificationColorOn,
        other.notificationColorOn,
        t,
      ),
      notificationColorOff: Color.lerp(
        notificationColorOff,
        other.notificationColorOff,
        t,
      ),
      buttonIconColorOn: Color.lerp(
        buttonIconColorOn,
        other.buttonIconColorOn,
        t,
      ),
      buttonIconColorOff: Color.lerp(
        buttonIconColorOff,
        other.buttonIconColorOff,
        t,
      ),
      mutedIcon: Color.lerp(
        mutedIcon,
        other.mutedIcon,
        t,
      ),
      todoColorOn: Color.lerp(
        todoColorOn,
        other.todoColorOn,
        t,
      ),
       todoColorOff: Color.lerp(
        todoColorOn,
        other.todoColorOn,
        t,
      ),
    );
  }
}
