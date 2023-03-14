// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ProfileSkillsWidget extends StatelessWidget {
  final double screenSize;
  final Color backgroundColor;
  final String title;
  const ProfileSkillsWidget({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(screenSize * 0.021),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenSize * 0.021),
        child: Text(
          title,
          style: textStyle.caption,
        ),
      ),
    );
  }
}
