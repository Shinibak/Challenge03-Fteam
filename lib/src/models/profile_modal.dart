import 'package:challenge03_fteam/src/models/chat_modal.dart';

class ProfileModal {
  final String avatarImage;
  final String name;
  final String number;
  final bool muted;
  final bool online;
  final String status;
  final List<ChatModal> messages;
  final int notifications;

  ProfileModal({
    required this.avatarImage,
    required this.name,
    required this.number,
    required this.muted,
    required this.messages,
    required this.online,
    required this.status,
    required this.notifications,
  });
}
