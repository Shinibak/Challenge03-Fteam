import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ViewChatPage extends StatelessWidget {
  const ViewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        SearchWidget(),
        MenuBarWidget(),
      ],),
      
    );
  }
}
