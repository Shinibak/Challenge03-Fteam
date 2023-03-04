import 'package:flutter/material.dart';

class FilterButtonModal {
  final String text;
  final IconData icon;
  final int notifications;
  final bool active;

  const FilterButtonModal({
    required this.text,
    required this.icon,
    required this.notifications,
    required this.active,
  });
}
