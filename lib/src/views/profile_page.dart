import 'package:challenge03_fteam/src/widgets/add_todo_list.dart';
import 'package:challenge03_fteam/src/widgets/profile_card_widget.dart';
import 'package:flutter/material.dart';
import '../models/profile_modal.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModal;

    return Scaffold(
      body: Column(
        children: [
          ProfileCardWidget(profile: profile),
        ],
      ),
      floatingActionButton: const AddTodoList(),
    );
  }
}
