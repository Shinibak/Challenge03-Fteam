import 'package:flutter/material.dart';

class FilterModal {
  final String text;
  final IconData icon;
  final int notifications;
  final bool active;

  const FilterModal({
    required this.text,
    required this.icon,
    required this.notifications,
    required this.active,
  });
}
