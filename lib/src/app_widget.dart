import 'package:challenge03_fteam/src/views/view_chat_page.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const ViewChatPage(),
        // '/two': (context) => const TodoPage(),
        // '/tree': (context) => const ChatPage(),
      },
    );
  }
}
