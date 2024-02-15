import 'package:apnanotes/config/my_theme.dart';
import 'package:apnanotes/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Notes App',
      theme: lightTheme,
      home: const SplashPage(),
    );
  }
}
