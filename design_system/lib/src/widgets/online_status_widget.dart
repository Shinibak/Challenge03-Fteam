import 'package:flutter/material.dart';

class OnlineStatusWidget extends StatelessWidget {
  final bool isOnline;
  const OnlineStatusWidget({super.key, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Container(
      height: screenSize * 0.026,
      width: screenSize * 0.026,
      decoration: BoxDecoration(
        color: isOnline ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(screenSize * 0.021),
      ),
    );
  }
}
