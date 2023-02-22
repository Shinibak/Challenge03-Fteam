import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final int notification;
  final Color color;
  const NotificationWidget({
    super.key,
    required this.notification,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width ;
    return Container(
      height: screenSize * 0.053,
      width: screenSize * 0.053,
      decoration: BoxDecoration(
        color: color,
        //color: color ? Colors.purple : Colors.grey,
        borderRadius: BorderRadius.circular(screenSize* 0.026),
      ),
      child: Center(
        child: Text(
          notification.toString(),
        ),
      ),
    );
  }
}
