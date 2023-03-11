import 'package:flutter/material.dart';
import '../themes/colors.dart';

class OnlineStatusWidget extends StatelessWidget {
  final double screenSize;
  final bool isOnline;
  const OnlineStatusWidget({
    super.key,
    required this.isOnline,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    final colors = MyColors();

    return Container(
      height: screenSize * 0.026,
      width: screenSize * 0.026,
      decoration: BoxDecoration(
        color: isOnline ? colors.onlineColor : colors.offlineColor,
        borderRadius: BorderRadius.circular(screenSize * 0.021),
      ),
    );
  }
}
