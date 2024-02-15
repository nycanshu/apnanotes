import 'package:apnanotes/config/my_theme.dart';
import 'package:apnanotes/pages/home_page.dart';
import 'package:apnanotes/pages/signup_page.dart';
import 'package:apnanotes/pages/splash_page.dart';
import 'package:apnanotes/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advanced Notes App',
      theme: lightTheme,
      home: const WelcomePage(),
      // routes: {
      //   '/': (context) => const SplashPage(),
      //   '/homepage': (context) => const HomePage(),
      //   '/welcomepage': (context) => const WelcomePage(),
      //   '/signup': (context) => const SignUpPage(),
      // },
    );
  }
}
