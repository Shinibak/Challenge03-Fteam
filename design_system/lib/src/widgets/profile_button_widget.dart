import 'package:design_system/src/themes/colors.dart';
import 'package:flutter/material.dart';

import '../themes/theme_extensions.dart';

class ProfileButtonsWidget extends StatelessWidget {
  final IconData icon;
  final bool active;
  const ProfileButtonsWidget({
    super.key,
    required this.icon,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    final colors = MyColors();

    return Container(
      height: screenSize * 0.133,
      width: screenSize * 0.133,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenSize * 0.04),
        color: colors.profileButton,
      ),
      child: Center(
        child: Icon(
          icon,
          color: active
              ? Theme.of(context).iconTheme.color
              : theme.buttonIconColorOff,
          size: screenSize * 0.058,
        ),
      ),
    );
  }
}
