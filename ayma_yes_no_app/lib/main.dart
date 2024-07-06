import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iniciales_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:iniciales_yes_no_app/config/theme/app_theme.dart';
import 'package:iniciales_yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MateApp());
}

class MateApp extends StatelessWidget {
  const MateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}