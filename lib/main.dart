import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/theme/dark_theme.dart';
import 'package:whatsapp_clone/common/theme/light_theme.dart';
import 'package:whatsapp_clone/features/auth/pages/user_info_page.dart';
import 'package:whatsapp_clone/features/auth/pages/verification_page.dart';
import 'package:whatsapp_clone/features/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const UserInfoPage(),
    );
  }
}
