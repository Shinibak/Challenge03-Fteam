import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AvatarNotificationWidget extends StatelessWidget {
  final String avatarImage;
  final int notifications;
  const AvatarNotificationWidget({
    super.key,
    required this.avatarImage,
    required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: screenSize * 0.117,
          width: screenSize * 0.117,
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SizedBox(
            height: screenSize * 0.106,
            width: screenSize * 0.106,
            child: CircleAvatar(
              backgroundImage: AssetImage(avatarImage),
              radius: screenSize * 0.053,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: NotificationWidget(
            notification: notifications,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
