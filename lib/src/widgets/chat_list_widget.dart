import 'package:challenge03_fteam/src/models/profile_modal.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  final ProfileModal profile;
  const ChatListWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height - (screenSize.width * 0.261),
      width: screenSize.width,
      child: ListView.builder(
        itemCount: profile.messages.length,
        itemBuilder: (BuildContext context, int index) {
          return profile.messages[index].sending
              ? Padding(
                  padding: EdgeInsets.only(
                    bottom: screenSize.width * 0.026,
                    right: screenSize.width * 0.064,
                  ),
                  child: SentMessageWidget(
                    hours: profile.messages[index].hour,
                    messages: profile.messages[index].message,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    bottom: screenSize.width * 0.037,
                    left: screenSize.width * 0.048,
                  ),
                  child: IncomingMessageWidget(
                    hours: profile.messages[index].hour,
                    messages: profile.messages[index].message,
                    profilePicture: profile.messages[index].profilePicture,
                    name: profile.name,
                  ),
                );
        },
      ),
    );
  }
}