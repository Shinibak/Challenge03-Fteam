import 'package:design_system/src/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';

class FilterButtonWidget extends StatefulWidget {
  final String text;
  final IconData icon;
  final int notifications;
  final bool active;
  final double screenSize;

  const FilterButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.notifications,
    required this.active,
    required this.screenSize,
  });

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  late bool wasPressed = widget.active;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThemeCustom>()!;

    return Container(
      height: widget.screenSize * 0.117,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.screenSize * 0.04),
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
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.screenSize * 0.053,
            ),
            Icon(
              widget.icon,
              size: widget.screenSize * 0.058,
              color: wasPressed
                  ? theme.buttonIconColorOn
                  : theme.notificationColorOff,
            ),
            SizedBox(
              width: widget.screenSize * 0.032,
            ),
            Text(
              widget.text,
              style: wasPressed
                  ? theme.buttonTextOnStyle
                  : theme.buttonTestOffStyle,
            ),
            SizedBox(
              width: widget.screenSize * 0.0106,
            ),
            NotificationWidget(
              notification: widget.notifications,
              activeNotification: wasPressed,
              screenSize: widget.screenSize,
            ),
            SizedBox(
              width: widget.screenSize * 0.053,
            ),
          ],
        ),
      ),
    );
  }
}
