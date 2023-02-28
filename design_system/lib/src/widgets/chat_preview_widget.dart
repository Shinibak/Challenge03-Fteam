import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';

// ignore: camel_case_types
class ChatPreviewWidget extends StatelessWidget {
  final ProfileModal profile;
  final int notifications;
  const ChatPreviewWidget({
    super.key,
    required this.profile,
    required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;

    return SizedBox(
      height: screenSize * 0.186,
      width: screenSize * 0.901,
      child: Row(
        children: [
          Column(
            children: [
              AvatarNotificationWidget(
                avatarImage: profile.avatarImage,
                notifications: notifications,
              )
            ],
          ),
          SizedBox(width: screenSize * 0.042),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: screenSize * 0.010),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(profile.name,
                    style: theme.overline1,),
                    Text(
                      profile.lastMessageData,
                      style: theme.caption,
                    ),
                  ],
                ),
                SizedBox(height: screenSize * 0.026),
                Row(
                  children: [
                    Text(
                      profile.number,
                      style: theme.overline2,
                    ),
                  ],
                ),
                SizedBox(height: screenSize * 0.037),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      profile.lastMessage,
                      style: theme.caption,
                    ),
                    Icon(
                      Icons.notifications_off_outlined,
                      color: profile.muted ? Colors.black : Colors.transparent,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
