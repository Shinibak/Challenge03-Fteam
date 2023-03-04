import 'package:flutter/material.dart';

class AvatarTodoListWidget extends StatelessWidget {
  final String avatarImage;
  const AvatarTodoListWidget({super.key, required this.avatarImage});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenSize * 0.2133333,
      width: screenSize * 0.2133333,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatarImage),
        radius: screenSize * 0.098,
      ),
    );
  }
}
