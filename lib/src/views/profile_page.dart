import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfileCardWidget(
          avatarProfile: 'assets/avatar/avatar.png',
          nameProfile: 'Ronaldo',
          numberCell: '(12) 998174-3437',
          message: 'Hello Everybody',
          onlineStatus: true,
          listButtonsProfile: [],
        ),
      ],
    );
  }
}
