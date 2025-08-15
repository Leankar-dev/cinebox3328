import 'package:cinebox_app/ui/core/themes/theme.dart';
import 'package:cinebox_app/ui/home/home_screen.dart';
import 'package:cinebox_app/ui/login/login_screen.dart';
import 'package:cinebox_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinebox App',
      theme: AppTheme.theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
