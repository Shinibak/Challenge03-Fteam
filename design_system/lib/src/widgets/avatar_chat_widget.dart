import 'package:flutter/material.dart';

class AvatarChatWidget extends StatelessWidget {
  final String avatarImage;
  const AvatarChatWidget({super.key, required this.avatarImage});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenSize * 0.064,
      width: screenSize * 0.064,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatarImage),
        radius: screenSize * 0.032,
      ),
    );
  }
}
