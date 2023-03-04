import 'package:challenge03_fteam/src/widgets/app_bar_chat_widget.dart';
import 'package:flutter/material.dart';
import '../models/profile_modal.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModal;
    return Column(
      children: [AppBarChatWidget(profile: profile)],
    );
  }
}
