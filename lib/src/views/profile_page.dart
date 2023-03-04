import 'package:challenge03_fteam/src/widgets/profile_card_widget.dart';
import 'package:flutter/material.dart';

import '../models/profile_modal.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModal;
    return Column(
      children: [
        ProfileCardWidget(profile: profile),
      ],
    );
  }
}
