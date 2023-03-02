import 'package:flutter/material.dart';

import '../themes/theme_extensions.dart';

class MenuButtonWidget extends StatefulWidget {
  final IconData icon;
  const MenuButtonWidget({super.key, required this.icon});

  @override
  State<MenuButtonWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    
    return Container(
      height: screenSize * 0.133,
      width: screenSize * 0.133,
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
        child: Center(
          child: Icon(
            widget.icon,
            size: screenSize * 0.058,
          ),
        ),
      ),
    );
  }
}
