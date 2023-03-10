import 'package:challenge03_fteam/src/widgets/app_bar_chat_widget.dart';
import 'package:challenge03_fteam/src/widgets/chat_list_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../models/profile_modal.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModal;
    final screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Column(
              children: [
                AppBarChatWidget(profile: profile),
                ChatListWidget(profile: profile),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: screenSize * 0.096),
              child: TextBarWidget(
                screenSize: screenSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
