import 'package:flutter/material.dart';

import '../../design_system.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool wasCheck;
  const CheckBoxWidget({
    super.key,
    required this.wasCheck,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;

    final theme = Theme.of(context).extension<ThemeCustom>()!;
    return Container(
      height: screenSize * 0.106,
      width: screenSize * 0.106,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenSize * 0.026),
        color: theme.buttonColorOn,
      ),
      child: Container(
        height: screenSize * 0.101,
        width: screenSize * 0.101,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenSize * 0.026),
          color: wasCheck ? theme.buttonColorOn : theme.todoColorOff,
        ),
        child: Center(
          child: Icon(
            Icons.check,
            color: wasCheck ? Colors.black : theme.buttonColorOff,
            size: screenSize * 0.042,
          ),
        ),
      ),
    );
  }
}
