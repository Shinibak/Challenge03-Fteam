import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';

// ignore: camel_case_types
class ChatPreviewWidget extends StatelessWidget {
  final String avatarImage;
  final String name;
  final String number;
  final String lastMessageData;
  final String lastMessage;
  final bool muted;
  final int notifications;
  const ChatPreviewWidget({
    super.key,
    required this.notifications,
    required this.avatarImage,
    required this.name,
    required this.number,
    required this.lastMessageData,
    required this.lastMessage,
    required this.muted,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    final text = Theme.of(context).textTheme;

    return SizedBox(
      height: screenSize * 0.186,
      width: screenSize * 0.901,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AvatarNotificationWidget(
                avatarImage: avatarImage,
                notifications: notifications,
                active: true,
              )
            ],
          ),
          SizedBox(width: screenSize * 0.042),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize * 0.010),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: text.bodyText2,
                    ),
                    Text(
                      lastMessageData,
                      style: text.caption,
                    ),
                  ],
                ),
                SizedBox(height: screenSize * 0.026),
                Row(
                  children: [
                    Text(
                      number,
                      style: text.bodySmall,
                    ),
                  ],
                ),
                SizedBox(height: screenSize * 0.026),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: screenSize * 0.0106,
                        ),
                        Text(
                          lastMessage,
                          style: text.caption,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.notifications_off_outlined,
                          color: muted ? theme.mutedIcon : Colors.transparent,
                        ),
                      ],
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
