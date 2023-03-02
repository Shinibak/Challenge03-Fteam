import 'package:design_system/src/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

import '../themes/theme_extensions.dart';

class FilterButtonWidget extends StatefulWidget {
  final String text;
  final IconData icon;
  final int notifications;

  const FilterButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.notifications,
  });

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;

    return Container(
      height: screenSize * 0.117,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenSize * 0.04),
        color: wasPressed ? theme.buttonColorOn : theme.buttonColorOff,
      ),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              wasPressed = !wasPressed;
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize * 0.053,
            ),
            Icon(
              widget.icon,
              size: screenSize * 0.058,
            ),
            SizedBox(
              width: screenSize * 0.032,
            ),
            Text(
              widget.text,
              style: wasPressed
                  ? theme.buttonTextOnStyle
                  : theme.buttonTestOffStyle,
            ),
            SizedBox(
              width: screenSize * 0.0106,
            ),
            NotificationWidget(
              notification: widget.notifications,
              activeNotification: wasPressed,
            ),
            SizedBox(
              width: screenSize * 0.053,
            ),
          ],
        ),
      ),
    );
  }
}
